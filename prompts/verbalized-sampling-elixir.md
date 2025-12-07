See: [[verbalized-sampling]]
## 🧩 1. Module Design Exploration

**Purpose:** Explore multiple architectural patterns for a new module or boundary.  
Use this when you’re unsure how to organize responsibilities or abstractions.

```
Generate 5 alternative designs for the [MODULE] in our Elixir system.

For each design, include:
- **Summary:** 2–3 sentences describing the main idea.
- **Probability:** estimated likelihood (0.05–0.25) that this design would be chosen by experienced Elixir developers.
- **Strength:** one advantage.
- **Weakness:** one drawback.

After listing all five, explain how their probabilities differ.
Then sample one of the lower-probability designs and expand it into a detailed outline (functions, dependencies, and example code).
```

**Example use:**

> Generate 5 alternative designs for the `AcmeWeb.ReportController` module that handles multi-tenant report rendering.

---

## 🧱 2. Data Modeling & Records

**Purpose:** Explore alternative data shapes or schemas before writing Ecto or pure-Elixir record definitions.

```
Suggest 5 alternative data modeling approaches for representing [DOMAIN ENTITY].

For each:
- **Representation:** describe fields, associations, and how it maps to persistence.
- **Probability:** 0.05–0.25
- **Trade-off:** one benefit and one potential issue.
- **Example:** short Elixir struct or schema snippet.

Then, take one tail-probability variant (less common) and expand it into a detailed example with 2–3 functions showing its usage.
```

**Example use:**

> Suggest 5 data modeling approaches for representing an ad campaign’s performance metrics.

---

## 🧠 3. API Shape or Public Interface

**Purpose:** Brainstorm interface options for reusable components or contexts.

```
List 5 possible API shapes for [COMPONENT].

Each should include:
- **Function Signature(s)** or sample usage
- **Probability:** 0.05–0.25
- **Design Intent:** what kind of developer it optimizes for
- **Trade-off:** one simplicity vs flexibility note

After listing, choose one lower-probability design and expand it into a realistic module interface.
```

**Example use:**

> List 5 possible API shapes for a `ReportingConfig` module that provides tenant-specific overrides.

---

## ⚙️ 4. Process Pipeline or Workflow

**Purpose:** Examine diverse orchestration flows (GenServers, Tasks, Oban jobs, etc.)

```
Propose 4 alternative process pipelines for [WORKFLOW].

For each:
- **Overview:** 3–4 sentences describing how data flows.
- **Probability:** 0.1–0.3
- **Latency Impact:** low / medium / high
- **Complexity:** qualitative rating
- **Trade-off:** performance vs maintainability

After listing, pick one tail-probability variant and expand it into a detailed step-by-step pipeline (with module boundaries or supervision tree layout).
```

**Example use:**

> Propose 4 alternative process pipelines for ingesting and normalizing metrics from multiple ad platforms.

---

## 🎨 5. Presentation or Workshop Ideation

**Purpose:** Use for talk titles, structure ideas, or teaching narratives (e.g. “Elixir for Complex Business Processes”).

```
Generate 5 creative directions for a presentation titled “[WORKING TITLE]”.

For each:
- **Theme:** 2–3 sentences summarizing the concept.
- **Probability:** 0.05–0.25
- **Tone:** (technical / cinematic / narrative / conceptual)
- **Audience Impact:** one expected reaction.

After listing, pick one low-probability but high-impact direction and outline a 3-section structure for it.
```

**Example use:**

> Generate 5 creative directions for a presentation titled “Nullables vs Mocks: Testing Without Illusions.”

---

## 🧩 6. Naming & Terminology Exploration

**Purpose:** Generate clean, descriptive, non-brand names that still feel original.

```
Propose 6 possible names for [CONCEPT OR MODULE].

For each:
- **Name**
- **Probability:** 0.10–0.25
- **Tone:** plain / descriptive / metaphorical / technical
- **Reasoning:** why it fits.

Then pick one low-probability but high-clarity name and explain why it might age better than the popular options.
```

**Example use:**

> Propose 6 possible names for a context that handles user onboarding flows.

---

## 💡 Usage Tips

- Works best with **temperature 0.8–1.0** or **top-p 0.9**.
- Use _“sample from the tails”_ phrasing whenever you want more unusual ideas.
- You can script this: feed VS outputs into a follow-up prompt like _“evaluate these options for simplicity and maintainability.”_
- For creative work (talks, names), ask the model to **rationalize probability differences** — this exposes its internal trade-off reasoning.