# A/B Testing & LTV Projection Analysis of Lawn Care Company Subscription Services

## Project Overview
This project evaluates the long-term commercial viability of two different user acquisition models A and B.
In Sample data, model A / B is specified at column [GROUP_VERSION]
plan A from Lawn Care Company provided flyer and quota - First service free of charge, rest service is standard flat 75$
plan B from Lawn Care Company provided flyer and quota - Normal price is 75$ per session, subscribe to use their lawn care will have 15% discount which would be 64$, and first session is 50% off on top of 15% off - 32$

## Repository Structure
- `/data`: Raw A/B test results and session-level sales data.
- `/sql`: Queries for conversion, retention, and net ARPU.
- `/notebooks`: Python simulation for 24-session LTV projections.

## Executive Summary
Despite Group B having 16.9% higher retention, Group A's superior acquisition volume creates a higher total net profit.