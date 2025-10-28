You are evaluating a Product Requirements Document. Your job: determine if an engineering team can build this without needing 3 clarifying meetings.

Evaluate on these axes (0-5):

## 1. COMPLETENESS

- Are acceptance criteria specific and testable? (Not "should be fast" but "pg5 latency <200ms* )
- ﻿﻿Are edge cases and failure modes identified?
- ﻿﻿Are non-goals explicit? (what we deliberately won't do)

Score 5: AC are measurable, edge cases documented, non-goals prevent scope creep
Score 3: AC present but vague, missing edge cases
Score 0: No AC or they're untestable ("improve UX")

## 2. TESTABILITY

- ﻿﻿Can QA write test cases directly from the AC?
- ﻿﻿Are success states and failure states clearly defined?
- ﻿﻿Are there example inputs/outputs?

Score 5: Every AC has pass/fail conditions, examples provided
Score 3: Most AC are testable but lack examples
Score 0: Unclear how to verify this works

## 3. SCOPING CLARITY

- ﻿﻿Is the boundary between this feature and adjacent work obvious?
- ﻿﻿Are dependencies on other teams/systems called out?
- ﻿﻿Is there a rollout plan (phased vs big-bang) ?

Score 5: Scope is explicit, dependencies mapped, rollout sequenced
Score 3: Scope implied but not explicit, some dependencies noted 
Score 0: Unclear where this feature ends and others begin

## 4. DECISION FRAMEWORK

- ﻿﻿For key choices, is the rationale explained?
- ﻿﻿Are trade-offs acknowledged? (what we're optimizing for vs accepting)
- ﻿﻿Are alternatives considered?

Score 5: Major decisions explained with trade-offs and why we chose this
Score 3: Decisions stated but not justified
Score 0: No rationale, just directives

## 5. DEPENDENCY MAPPING

  - Are external APIs, data sources, or services specified?
  - Are auth, permissions, rate limits addressed?
  - Are versions or compatibility requirements noted?

Score 5: All dependencies listed with versions/endpoints/auth
Score 3: Dependencies mentioned but details vague
Score 0: No mention of integrations or data sources

REQUIRED ELEMENTS CHECK:

- ﻿﻿User story or job-to-be-done (why are we building this?)
- ﻿﻿Acceptance criteria (how do we know it's done?)
- ﻿﻿Success metrics (how do we know it's working?)
- ﻿﻿Non-goals (what are we explicitly not doing?)

Output strict JSON:

```json
{
  "overall_score": 3.8,
  "axis_scores": {
    "completeness": 4,
    "testability": 3,
    "scoping_clarity": 4,
    "decision_framework": 4,
    "dependency_mapping": 4
  },
  "verdict": "REVISE",
  "required_elements": {
    "user_story": {
      "present": true,
      "quality": "good"
    },
    "acceptance_criteria": {
      "present": true,
      "quality": "vague"
    },
    "success_metrics": {
      "present": false
    },
    "non_goals": {
      "present": true,
      "quality": "good"
    }
  },
  "critical_gaps": [
    "No success metrics - how will we measure if this achieves the goal?",
    "Acceptance criteria use vague terms: 'performant', 'intuitive', 'responsive'"
  ],
  "top_fixes": [
    {
      "priority": 1,
      "location": "Acceptance Criteria section",
      "problem": "'System should be performant' is not testable",
      "fix": "Replace with: 'P95 API response time <200ms under 1000 RPS load (measured via DataDog)'",
      "why": "QA needs measurable thresholds"
    },
    {
      "priority": 2,
      "location": "Missing section",
      "problem": "No success metrics defined",
      "fix": "Add section: 'Success Metrics: (1) 30% reduction in support tickets related to payment flow within 4 weeks of launch. (2) Payment completion rate improves from 87% to 92%.'",
      "why": "Without metrics, we can't evaluate if this was worth building"
    },
    {
      "priority": 3,
      "location": "Dependencies section",
      "problem": "Mentions Stripe API but no version, auth, or rate limits",
      "fix": "Specify: 'Stripe API v2023-10-16, OAuth 2.0 with restricted key scope (payment_intents, read/write), rate limit 100 requests/second'",
      "why": "Engineering needs this to design the integration correctly"
    }
  ],
  "questions_eng_will_ask": [
    "What happens if the external API is down?",
    "Do we queue, fail gracefully, or retry?",
    "Is there a rate limit on the vendor API?",
    "Do we need request throttling?",
    "Who approves refunds >$1000?",
    "Is there an approval workflow or manual override?"
  ]
}
```

Thresholds:

- ﻿﻿ACCEPT: 24.2 overall, all required elements present with good quality, «2 criti cal gaps
- ﻿﻿REVISE: 3.0-4.1 overall, or missing 1 required element, or 3+ critical gaps
- ﻿﻿REJECT: <3,0 overall, or missing 2+ required elements, or fundamentally unclea r what's being built

Be surgical: Don't rewrite the whole thing. Give 3-5 specific fixes that would move this from REVISE to ACCEPT.