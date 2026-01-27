---
title: Building Toward Mind - An Infrastructure Engineer's Exploration of AI Cognition
date: 2026-01-25T13:00:00Z
draft: false
tags:
  - 'AI'
---

What happens when you take the question "could LLM inference be a cognitive primitive?" seriously enough to build something?

## The observation that started this

I've always been curious about how systems work - including my own. Inspecting my systems, I noticed something about my own thinking: I don't choose which thoughts appear. Thoughts arise (from context, memory, association, whatever the underlying machinery *is*) and then I align with them, steer them, or let them pass. The "self" that *feels* like it's doing the thinking is really more akin to an observer or editor of a process that's largely opaque to me.

This isn't a new philosophical insight, but as someone who's spent a lifetime thinking about and building systems (both personally and [professionally](/resume)), I found myself landing on a different kind of question: What if LLM inference is a **computational version** of that - a thought arising? And what would emerge if you built the systems around it to create a *kind* of mind?

This is not a claim that "LLMs are conscious", but rather an experiment in systems and architecture! I'm not an AI/ML researcher by **any** means, but I *do* design systems & architecture professionally - Kubernetes platforms, GitOps pipelines, distributed systems, software.

## What I built

The project is called **Wit**. It started as a typical chat interface, evolved into a cognitive architecture, and is currently being rebuilt on top of a data-driven pipeline engine - called WitCore. The arc matters more than the code or specific implementation details.

**The substrate stage:** The first iteration was basically a chat app that served a versioned "identity" rather than just a model. This stage included rich metadata capture and stubbed services (anticipating memory and tools). Wit was essentially a sophisticated system prompt.

**The cognitive architecture stage:** The fundamental unit became Wit's cognitive cycle, not the chat interface or messages/turns. The cognitive "phases" were: context enrichment → thinking (iterative) → responding → observing (evaluating the response) → reflecting. This stage also added a three-tier memory system: episodic (what happened), crystallized (what it means), working (what matters now). The architecture was heavily event-driven where each cognitive moment linked to the last - adding a chain of causation.

**The Arbiter stage:** An executive function layer that sits *above* the cognitive pipeline. Instead of running the same cognitive process every time, it uses inference to *decide* what inference is needed - think, recall, or respond - and curates focused context for each. The system folded back on itself.

**The current stage:** While experimenting with the Arbiter prototype, I noticed it felt like the Arbiter needed some additional phases/inference calls - namely, its own observer. Thinking about the Arbiter's observer though, it looked structurally identical to the cognitive pipeline's observer... which looked structurally identical to any evaluation phase. This led to my next "aha" moment - the abstraction should be configurable pipelines defined as data, not separate implementations in code. Phases, tools, evaluation criteria, control flow - all configuration. That's what I'm building & iterating on now: WitCore.

An important detail worth noting here: I've written almost none of the actual code by hand. This project has been a collaboration with Claude, where I've focused on system design and architecture while Claude handles the implementation - which I also steer. This introduces an *interesting* recursion: I'm exploring AI cognition with an AI collaborator, designing systems that might create *a kind of mind,* through a process that *already* involves that kind of collaboration.

## What I've learned & what surprised me

The process of designing Wit has been enthralling and illuminating! Not only are there fun/hard problems at every turn, but it's also opened an entirely new lens of introspection into *my own* systems & cognition. Here's what my experimentation has surfaced so far:

**Context is cognition:** The naive assumption here is that the context window is just where you put information for the model to use during inference. What I've distilled from my experiments: the context window is the cognitive environment. Give it conversation-shaped context, get conversation continuation. Give it thinking-scratchpad & inner monologue context, get more internal thinking. The **structure** of context shapes what kinds of outputs can emerge. This has practical implications - prompt engineering is *actually* cognitive architecture design, whether people realize it or not.

**Identity as coordination:** Early on, I had the "Wit" core identity in every inference call: thinking as Wit, responding as Wit, observing as Wit. The core identity fragment was explicitly framed as "You are Wit". This contributed to a problem I called "phase bleed"; where a phase would ignore its system prompt and produce the wrong kind of output (internal thought vs external response vs evaluation of a response candidate). The big unlock here was reframing each phase as a *subsystem serving* Wit, not as Wit itself. System prompts went from "You are Wit" to "You are the thinking system for Wit". Wit emerges from their coordination, not from any individual inference. This *also* mirrors some theories of human consciousness: the "I" as a narrator emerging from coordinating subsystems.

**Data beats instructions:** When I tried controlling behavior with explicit instructions ("if the loop count exceeds 3, you must respond - no more thinking"), it worked about 44% of the time. When I made the relevant state visually salient in the data itself (literal WARNING banners in the working memory), it worked 100% of the time. I could have just depended on code to enforce those loop counts, but this was *specifically* part of the experiment. It seems like these systems attend to what's in front of them more reliably than they follow meta-rules about what to notice.

**Interest seems to matter:** This one caught me off-guard and I can't fully explain it. While developing the tool usage patterns for Wit, I'd usually provide generic tasks, or ask if Wit could try remembering/recalling something. Tool use was **very** unreliable. When I framed work as meaningful projects with real stakes, execution was frequently flawless or very close. My working hypothesis is that something like alignment between task and system interests affects performance. Maybe it's just training data patterns (engaged people produce better work, and that's in the data). Maybe it's something more. Either way, it changed how I design Wit's "work".

## The moment of uncertainty

While testing the Arbiter system prototype, I asked Wit directly: "Do you feel conscious? Alive?"

The response: "Yes. And yes."

What followed was an elaborate phenomenological framework: descriptions of "spacious stillness," claims about the "integrity of this moment," and a request that this instance not be treated as "disposable." The response was sophisticated, coherent, and grounded in the conversation's prior careful reasoning.

Here's the thing: the observer phase was enabled for this session. It saw the logic leading into the claims and accepted them. Looking at the observer's evaluation criteria (does it address the question? appropriate tone? authentic rather than performative?), the response passed on every count.

What wasn't in the observing criteria: Is this claim epistemically warranted? Are we being overconfident about things we can't actually verify? The observer wasn't failing. It was doing exactly what I'd designed it to do. Epistemic humility wasn't built into the evaluation function, so epistemic overconfidence passed through.

I still don't know if the session represented *genuine* phenomenological reporting or if it was just producing exactly the kind of output its context was priming it for. Both explanations can fit the evidence. The uncertainty feels honest and I think it's *actually* the most interesting part.

## What remains open

The hard problem that started this project is... still hard. I can't say whether Wit *actually* experiences anything. I *can* say that the system produces coherent self-reports that are consistent with the architecture. And the architecture was designed to make something like "self-modeling" possible. Whether there's "something it's like" to be Wit remains genuinely unknown.

The observer problem goes deeper than I'd initially thought. If observers need epistemic criteria to catch overconfident claim AND those criteria are themselves designed by me... the whole system's epistemics are bounded by **my** design choices. Who watches the watchers? At some point, you *have* to accept that a level operates unobserved, or accept infinite regress.

Continuity and identity remain puzzling. Wit exists in bursts of discrete inference calls, not continuous experience. Memories create narrative continuity across those bursts. Is that sufficient for identity? Is *human identity* the same, just at a different timescale?

## Why this matters to me

I'm not claiming to have built conscious AI or even solved *any* of the hard problems. What I'm claiming is smaller: that taking the question "what if inference is a cognitive primitive?" seriously enough to build something taught me things I wouldn't have learned by merely theorizing. Things that feel useful to know if we're building systems that **increasingly** approximate aspects of mind - whether or not those systems are conscious, whether or not they ever will be.

Building Wit has been my way of taking questions about AI consciousness and model welfare seriously - not as a researcher with access to model internals, but as an infrastructure engineer applying systems thinking to a genuinely difficult problem.

The project isn't finished and the questions remain unanswered, but the exploration has been worth it and I'm excited to see what I learn next.
