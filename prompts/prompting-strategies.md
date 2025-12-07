https://www.youtube.com/watch?v=GTEz5WWbfiw

**1. Self-Correction Systems (0:35):** These techniques force models to critique their own outputs. 
* **Chain of Verification (0:59):** Requires the model to verify its analysis and revise findings within the same prompt. 
* **Adversarial Prompting (1:54):** Demands the model find problems with its own output, even if it has to stretch.

**2. Strategic Edge Case Learning (2:45):** Helps the model distinguish difficult "gray spaces." 
* **Few-Shot Examples / Few-Shot Prompting (3:01):** Includes examples of common failure modes and boundary conditions to teach the model subtle distinctions.

**3. Meta Prompting (4:28):** Exploits the model's knowledge about effective prompts. 
* **Reverse Prompting (4:46):** Asks the model to design an optimal prompt for a given task and then execute it. 
* **Recursive Prompt Optimization (5:53):** Guides the model through multiple iterations to refine a prompt based on specific criteria (e.g., adding constraints, resolving ambiguities).

**4. Reasoning Scaffolds (6:46):** Structures interactions to encourage deeper analysis. 
* **Deliberate Over-Instruction (7:09):** Explicitly tells the model _not_ to summarize and to expand on every point with exhaustive detail. 
* **Zero-Shot Chain of Thought Structure (8:15):** Provides a template with blank steps for the model to fill, forcing it to decompose the problem. 
* **Reference Class Priming (9:18):** Gives the model an example of high-quality reasoning and asks it to match that standard.

**5. Perspective Engineering (10:20):** Pushes the model to generate competing viewpoints. 
* **Multi-Persona Debate (10:43):** Instantiates multiple "experts" with conflicting priorities to debate an issue and then synthesize a recommendation. 
* **Temperature Simulation (12:02):** Has the model roleplay at different "temperatures" (e.g., uncertain junior analyst vs. confident expert) and then synthesize their perspectives.