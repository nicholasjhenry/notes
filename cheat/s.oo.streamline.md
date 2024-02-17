12 Collaboration Patterns

- actor - role
- outer_place - place
- item - specific_item
- assembly - part
- container - content
- group - member
- role - transaction
- place - transaction
- specific_item - transaction
- composite_transaction - line_item
- specific_item - line_item
- transaction - followup_transaction

Three Fundamental Patterns

Generic-Specific

- People place or things involved in multiple contexts.
- Things existing in many varieties.
- Events with multpile interactions involving people, places, or things.

  * actor - role
  * item - specific_item
  * composite_transaction - line_item

Whole-Part

People, places, things or events put into classifications, assemblies, containers
or geographic locations.

  * outer_place - place
  * assembly - part
  * container - content
  * group - member

Specific-Transaction

People, places and things, or events involved in interactions that need to be
remembered.

  * role - transaction
  * place - transaction
  * specific_item - transaction
  * transaction - followup_transaction
  * specific_item - line_item

Five Kinds of Collaboration Rules

  * Type
  * Multiplicity
  * Property
  * State
  * Conflict

Three Kinds of Services

  * Conduct Business (commands)
  * Determine Mine (queries on current)
  * Analyze Transactions (queries on historical)

Six kinds of Properties

  * Descriptive
  * Time
  * Lifecycle State
  * Operating State
  * Role
  * Type

Collaboration Rule Directors for Collaborations
Collaboration Types

  * Entities
  * Events

Directors

NOTE! The generic delegates to the specific. The generic is the co-ordinator,
the specific is the director.

  * Generic-Specific -> specific
  * Whole-Part -> part
  * Specific-Transaction -> transaction

Rules for Factory Methods

References:

* Page 100
* See notes "My Notes on Services"

Rules:

- #24 Do it myself: "Actions _upon_a real-word entity become services provided _by_ the object that
represents the entity."
- #25 Do it with data: Rational: "All the information needed to act on an object is inside the object, so let the
object do the work"

#88 Streamlining Collaboration Accessors: To streamline the collaboration accessors, allow one collaborator to delegate the process of establishing and dissolving the collaboration to the other collaborator.

- generic delegates to specific
- whole delegates to a part
- specific delegates to a transaction

Creating new objects -- mostly for transactions

> Some conduct business services trigger the creation of new objects. This frequently occurs when a transaction is created to record an interaction initiated by a conduct business service. The director of the conduct business service does not necessarily create the transaction. Any of the objects (roles, places or specific items) involved in the transaction can create it. Good object think suggests allowing the object most knowledgeable about the interaction to create the transaction. Here, the most knowledgeable object is either the one supplying most of the details in the interaction or the object with the most constraints restricting its participation in the interaction. Choosing the most knowledgeable object is a judgment call. When no object leaps out, consider extensibility issues and then just pick one. What matters most is that you distribute the work and put the service near the information required to make the transaction. Some examples might help.

The key here is "consider extensibility issues", i.e. think of this:

    class Page
      def like(user)
        Like.create!(:page => self, :user => user)
      end
    end

    # verses

    class User
      def like(page)
        Like.create!(:page => page, :user => self)
      end
    end

    # which could become:

    class User
      def like (likeable)
        Like.create!(:likeable => likeable, :user => self)
      end
    end

Reminder how collaborations work

- `add_x(x)` : method calls the following
- `test_add_x(x)` : validates the collaboration
- `do_add_x(x)` : forms the validation

`Foo#add_bar(bar)`
-> `Bar#add_foo(foo)`
-> `Bar#test_add_foo(foo)`
-> `Bar#do_add_person(foo)`

Examples

    class TeamMember
      def initialize(person, team)

      # ACCESSORS -- add collaborators
      def add_person(person)
      alias_method :person=, :add_person_
      def add_team(team)
      alias_method :team=, :add_team
      def remove_person(person)
      def remove_team(team)

      # ACCESSORS -- do adds
      def do_add_person(person)
      def do_add_team(team)
      def do_add_nomination(nomination)
      def do_remove_person(person)
      def do_remove_team(team)
      def do_remove_nomination(nomination)

      # CONDUCT BUSINESS
      def make_admin
      def make_chair
      def make_member
      def grant_nominate_privilege
      def grant_delete_privilege
      def revoke_nominate_privilege
      def revoke_delete_privilege

      # COLLABORATION RULES
      def test_add_person(person)
      def test_add_team(team)
      def test_add_nomination(nomination)
      def test_remove_person(person)
      def test_remove_team(team)
    end

    class Document
        def initialize(title)

        # ACCESSORS -- get properties
        attr_reader :title, :security_level, :publication_date

        # ACCESSORS -- get collaborators
        def nominations

        # ACCESSORS -- set properties
        attr_writer :title

        # ACCESSORS -- do adds & removes
        def do_add_nomination(nomination)
        def do_remove_nomination(nomination)

        # DETERMINE MINE
        def published?
        def approved?

        # ANALYZE TRANSACTIONS
        def approved_nomination
        def latest_nomination

        # CONDUCT BUSINESS
        def nominate(team_member)
        def publish

        # COLLABORATION RULES
        public void testAddNomination(INomination aNomination) throws BusinessRuleException;
        def test_add_nomination_conflict(nomination, team_member)
    }

    class Nomination
      # ACCESSORS -- get properties
      attr_reader :comments, :nomination_date

      # ACCESSORS -- get property values
      def status_approved?
      def status_rejected?
      def status_pending?
      def status_in_review?
      def not_resolved?

      # ACCESSORS -- get collaborators
      def document
      def team_member

      # ACCESSORS -- set properties
      attr_writer :comments

      # ACCESSORS -- set property values
      attr_writer :status_approved, :status_in_review, :status_approved, :status_rejected

      # ACCESSORS -- add collaborators
      def add_team_member(team_member)
      alias_method :team_member=, :add_team_member
      def add_document(document)
      alias_method :document=, :add_document

      # ACCESSORS -- do adds
      def do_add_document(document)
      def do_add_team_member(team_member)

      # DETERMINE MINE
      def is_before?(date)
      def is_after?(date)

      # COLLABORATION RULES
      def test_add_document(document)
      def test_add_team_member(team_member)
    end

    # simple collaboration
    #

    TeamMember.new(person, team)
    # collaborate with person
    -> self.add_person(person)
      -> self.test_add_person(person)
      -> self.do_add_person(person)
      -> person.do_add_team_member(self)
    # collaborate with team
    -> add_team(team)
      -> self.test_add_team(team)
      -> team.test_add_team_member(self)
      -> self.do_add_team(team)
      -> team.do_add_team_member(self)

    # conduct business
    #

    document.nominate(team_member)
    -> self.create_nominate(team_member)
      -> Nomination.new(self, team_member)
        -> self.add_team_member(team_member)
          -> self.test_add_team_member(team_member)
          -> team_member.test_add_nomination(self)
          -> self.do_add_team_member(team_member)
          -> team_member.do_add_nomination(self)
        -> self.add_document(document)
          -> this.test_add_document(document)
          -> document.test_add_nomination(self)
          -> self.do_add_document(document)
          -> document.do_add_nomination(self)
