---
id: 9he59qafozs1cols3ccbfdr
title: Multiagent Memory Architecture
desc: ''
updated: 1682125683895
created: 1682091136722
---
# Multiagent Memory Architecture

## Memory Stream
- All observations are stored in the memory stream
- Memories have properties:
  - Recency: When was the memory last retrieved - exponential decay
  - Importance: How important the event is (eating breakfast on a normal day vs breaking up with your SO)
  - Relevance: Relevance to a certain situation - basically similarity to a query to the memory stream
- Calculate a score for each memory with those weighted properties
- Add the most relevant k memories to the active memory which is used for reasoning

## Reflections
- Reflect when the sum of importance scores for recent events surpasses a threshold (something important happened)
- Determine questions to ask about those memories:
  - Ask LLM: Given only the information above what are 3 most salient high-level questions we can answer about the
    subject?
- Extract insights as answers to those questions:
  - Ask LLM: What high level insights can you infer from above statements (example format: insight (because of 1, 5, 3))

## Planning
- A plan is: Action + Location, starting time, duration
- Plans are also stored in the memory stream
- Make a general agenda for the day:
  - Ask LLM: Given agent description + short summary of previous day what would be the rough agenda for today
- Decompose the agenda into hour long chunks and then little chunks from 5-15 min

## Reacting:
- Ask LLM:
  - Given:
    - Current date & time
    - What agent just did
    - What agent just observed
    - relevant context from agent's memory (query Memory stream)
      - What is agent's relationship with observed entity
      - Observed entity is currently doing/being (current action/status)
  - Ask: Should agent react to the observation and if so what would be the appropriate reaction
- Then rebuild plan from time after reaciton

## Dialogues
- Ask LLM:
  - Same context as with reacting
  - Describe the dialogue action the agent is about to take (e.g. ask about music project) and ask what they would say


Source: [Generative Agents: Interactive Simulacra of Human Behavior](https://arxiv.org/abs/2304.03442)
