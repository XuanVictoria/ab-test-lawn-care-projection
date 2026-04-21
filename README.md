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
Conclusion: Despite Group B having 16.9% higher retention, Group A's superior acquisition volume creates a higher total net profit.
Detail Metrics:

Metric	Version A	Version B	The Winner
Active Users (S24)	5.3	5.9	Version B
Session Profit (S24)	$344.50 	$318.60 	Version A
Total Cumulative Profit	$13,652 	$8,705 	Version A

Even though Version B eventually ends up with more active users due to its superior retention, it cannot overcome two massive hurdles:
The Margin Gap: Version A earns $11 more profit per user per session ($65 vs $54).
The Head Start: Version A began with 17 users while Version B only had 8. By Session 8, Version A already had a big profit lead.
To reach a “Break-Even” where Version B’s total profit equals Version A’s, Version A’s churn would have to accelerate to over 15% per session, or the test would have to run for roughly 150 sessions (nearly 3 years of weekly treatments).
Strategy proposal:
From the data view to provide a strategy standpoint, here is the takeaway: Don’t chase the retention of B, fix the margin and acquisition of A.
Version A’s “Free Session” is a powerhouse for acquisition. The 30% early churn is a “feature,” not a bug—it’s the cost of filtering out low-value users. Once those users are gone, the remaining “Core” in Group A is actually more profitablethan the high-intent users in Group B because they are paying a higher price point.
The Hybrid Action Plan:
Keep the Version A acquisition model (Free Session 1).
Implement the Version B retention “Lock-in”: Perhaps offer a discount if users pre-pay for 8 sessions after their free trial, which might give you A’s volume with B’s stickiness.

for more of my analysis details and tought process please visit my personal blog: 
https://victoriaxuan.wordpress.com/2026/04/09/the-grass-is-greener-on-which-side-my-lawn-care-a-b-testing-story/
