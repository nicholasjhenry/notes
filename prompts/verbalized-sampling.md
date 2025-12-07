
Sources:
- https://generativeai.pub/stanford-just-killed-prompt-engineering-with-8-words-and-i-cant-believe-it-worked-8349d6524d2b
- https://arxiv.org/abs/2510.01171

## 🧩 1. Architecture & Design Exploration

Use this when you want structural options — e.g. data modeling, module boundaries, or process decomposition.

**Prompt:**

> Generate 5 alternative designs for the `[topic]` in our Elixir application.  
> For each design, provide:
> 
> - **Description:** a concise explanation (3–5 sentences)
> - **Probability:** your estimated likelihood that this design would be preferred by experienced Elixir developers (between 0.05–0.25 each)
> - **Trade-offs:** one strength and one weakness
>     
> After listing all five, briefly explain how the probabilities differ.  
> Then sample _one_ design from the lower-probability half and expand it into a full proposal.

**Example:**

> Generate 5 alternative designs for handling tenant configuration in a multi-tenant Phoenix app.

---

## 🧠 2. Naming & Terminology Discovery

You’ve said you prefer straightforward, non-“brand-y” names — this template broadens the model’s lexical space without collapsing to clichés.

**Prompt:**

> Produce 6 possible names for the `[concept]`.  
> For each, include:
> 
> - **Name:** the proposed term
> - **Probability:** estimated relative likelihood of being chosen by developers (0.10–0.25 range)
> - **Tone:** (plain, descriptive, metaphorical, technical, etc.)    
> 
> Then, pick one low-probability but high-clarity option and explain why it could outperform the most common choice.

**Example:**

> Produce 6 possible names for a module that configures client-specific reporting components.

---

## 🔄 3. Process or Pipeline Variants

Useful when exploring control flows, background job orchestration, or ingestion pipelines.

**Prompt:**

> Suggest 4 alternative process pipelines for `[workflow]`.  
> For each, provide:
> 
> - **Overview:** short paragraph of how it works
> - **Probability:** between 0.1 and 0.3
> - **Latency:** estimated impact (low, medium, high)
> - **Complexity:** qualitative rating  
> 
> After listing all, pick a tail-probability variant and expand it into a detailed step-by-step sequence.

**Example:**

> Suggest 4 alternative process pipelines for ingesting advertising metrics from multiple platforms.

---

## 🎨 4. Creative Prompting (Talks, Workshops, or Docs)

To unlock diversity for presentation concepts or workshop outlines.

**Prompt:**

> Generate 5 distinct creative directions for a presentation titled `[working title]`.  
> For each, provide:
> 
> - **Theme:** concise description of the concept
> - **Probability:** 0.05–0.25
> - **Tone:** technical / narrative / cinematic / conceptual
> 
> After listing, identify which low-probability idea would most surprise or engage a technical audience, and outline a 3-section structure for it.

**Example:**

> Generate 5 creative directions for “Elixir for Complex Business Processes”.

---

## ⚙️ 5. Implementation Scenarios or API Contracts

For exploring API shapes or configuration interfaces before committing.

**Prompt:**

> List 5 potential API shapes for `[component]`.  
> For each, include:
> 
> - **Signature or structure example**
> - **Probability:** your confidence it’s idiomatic Elixir (0.05–0.25 each)
> - **Trade-off:** what simplicity or flexibility it offers
> 
> Then sample one lower-probability design and illustrate how it could evolve over time.

**Example:**

> List 5 potential API shapes for a `ReportingConfig` component that allows client-specific customization.

---

## 🧠 Tips for Effective Use

- **Explicitly bound probabilities** (e.g., 0.05–0.25): this forces the model to spread mass across multiple modes.
- **Request reasoning about probability differences** — it helps the model reflect on diversity.
- **Use “sample from the tails”** or “expand a low-probability idea” to escape mainstream answers.
- Combine with **moderate temperature** (e.g. 0.8–1.0) for maximal effect.
- **Post-process** by evaluating alternatives manually or programmatically (you can even pipe outputs into an evaluator model).
    