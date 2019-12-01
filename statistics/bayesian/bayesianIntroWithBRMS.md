Bayesian multilevel modeling with BRMS
================

![](https://github.com/adowneywall/Tutorials/blob/master/img/bayesianComic.png)

## Brief Introduction to Bayesian Statistics

The intent of this section is to provide some basic background and
context for understanding Bayesian statistics and inference. The goal is
to illustrate how this approach differs from frequentist statistics and
offer a practical overview of the core Bayesian principles we will
hopefully help us down the road when we look at more complicated
examples of Bayesian models.

### Frequentist vs. Bayesian

One way to to think about the division between a frequentist and
bayesian approach is to consider the underlying principle of probability
as it is considered in the two different methods. Here we illustrate two
distinct definitions which encompass either frequentist or bayesian
thought:

**R.A. Fisher – Probability as Long-Term Frequency (a frequentist
approach):**

    The probability of an event is equal to the long-term frequency of the event occurring when the same process is repeated multiple times. 

As per this definition, the probability of a coin toss resulting in
heads is 0.5 because rolling the die many times over a long period
results roughly in those odds.

**Rudolf Carnap - Logical Probability (a bayesian
    approach):**

    The probability of an event is measured by the degree of logical support there is for the event to occur. According to this definition, a probability is nothing but a generalization of classical logic.

The first definition illustrates a core tenant of frequentist
statistics; only events that are both random and repeatable (e.g. coin
flips) have probabilities. This is because we can only know the
probability of an event if we have evaluated the likelihood of that
event over many trials. This allow means that frequentist would not
attach prior probabilities to any statistic test (or hypothesis).

If we consider the second definition, we can see Bayesians have a
greater degree of flexibility in there interpretation. Practically
speaking, Bayesians would argue that we can often large information from
the sample data to estimate prior probabilities of certain events (or
hypotheses) occuring.

**Conceptual Example**

To illustrate this more clearly consider the

**Frequentist Approach**

A frequentist would reason that since the mean height is an actual
number, they cannot assign a random probability to it being equal to,
less than, or greater than a certain value.

Therefore, a Frequentist would collect some sample data from the
universal data and estimate the mean as the value which is most
consistent with the actual mean. This is known as a maximum likelihood
estimate. When the distribution is normal, this estimate is simply the
mean of the sample.

**Bayesian Approach**  
A Bayesian, on the contrary, would reason that although the mean is an
actual number, there is no reason not to assign it a probability. The
Bayesian approach will do so by defining a probability distribution
based on possible values of the mean.

This distribution will then be updated using data from the sample. This
update is done by applying the Baye’s theorem which is shown
below.

![](https://github.com/adowneywall/Tutorials/blob/master/img/bayesTheoremDiagram.png)

The sample data makes the probability distribution narrower around the
parameter’s true and unknown value. The Baye’s theorem is applied to
each possible value of the parameter. Here’s a short video highlighting
the differences in Frequentist vs Bayesian ab testing.

[Link to youtube description](https://youtu.be/r76oDIvwETI)

### Frequentist vs Bayesian Statistics – The Differences

**(i) Use of prior probabilities**  
The use of prior probabilities in the Bayesian technique is the most
obvious difference between the two. Frequentists believe that there is
always a bias in assigning probabilities which makes the approach
subjective and less accurate. Bayesians, on the other hand, believe that
not assigning prior probabilities is one of the biggest weaknesses of
the frequentist approach.

**(ii) Data Prediction**  
Since the Frequentists don’t believe in assigning prior probabilities,
their estimate is based on the maximum likelihood point. Bayesians, on
the other hand, have a complete posterior distribution over possible
parameter values. This allows them to account for the uncertainty in the
estimate by integrating the entire distribution, and not just the most
likely value.

**(iii) Mitigating Uncertainty**  
The Bayesian approach to mitigating uncertainty is by treating it
probabilistically. Frequentists don’t have that luxury. However, this
doesn’t mean that there is no uncertainty in the frequentist approach.
The estimate derived from sample data can, and is often, wrong. In order
to mitigate this uncertainty, Frequentists use two techniques.

The use of confidence intervals.

Null hypothesis significance testing (NHST) which is related to
P-values.

### Bayesian Statistics A practical introduction

![](https://github.com/adowneywall/Tutorials/blob/master/img/bayesianDistributions.png)

“Bayesian statistics is a mathematical procedure that applies
probabilities to statistical problems. It provides people the tools to
update their beliefs in the evidence of new data.”

To see how this may be important consider the example:

In 4 championship F1 races between Niki Lauda and James hunt, Niki won 3
times while James managed only 1.

Given this information who would you expect to win in their 5th race?

Most likely you would say Niki Lauda.

But what if we knew some additional details about their previous races?

What if you are told that it rained once when James won and once when
Niki won and it is definite that it will rain on the next date. Would
this information effect your prediction?

By intuition and logical reasoning, we might think this new information
would dramatically increase the likelihood of James winning. But the
question is: how much ?

To approach this problem of how much, we need to become familiar with
some core concepts including conditional probability and bayes theorem.

**Conditional Probability**

We can define conditional probability as : “The probability of and event
A given B equals the probability of B and A happening together divided
by the probability of
B.”

![](https://github.com/adowneywall/Tutorials/blob/master/img/conditionalProb_AgivenB.png)

For example: Assume two partially intersecting sets A and B as shown
below.

![](https://github.com/adowneywall/Tutorials/blob/master/img/conditionalProb_colorFigure.jpg)

Set A represents one set of events and Set B represents another. We wish
to calculate the probability of A given B has already happened. Lets
represent the happening of event B by shading it with red.

Now since B has happened, the part which now matters for A is the part
shaded in blue which is interestingly \(A\cap B\).  
So, the probability of A given B turns out to
be:

![](https://github.com/adowneywall/Tutorials/blob/master/img/conditionalProb_AgivenB_full.png)

This can also be written as:

This is known as the **conditional probability**..

Now lets lets revisit the racing problem:

Suppose, B be the event of winning of James Hunt. A be the event of
raining. Therefore,

    P(A) =1/2, since it rained twice out of four days.
    P(B) is 1/4, since James won only one race out of four.
    P(A|B)=1, since it rained every time when James won.

Substituting the values in the conditional probability formula, we get
the probability to be around 50%, which is almost the double of 25% when
rain was not taken into account (Solve it at your end).

This further strengthened our belief of James winning in the light of
new evidence i.e rain. You must be wondering that this formula bears
close resemblance to something you might have heard a lot about. Think\!

Probably, you guessed it right. It looks like Bayes Theorem.

Bayes theorem is built on top of conditional probability and lies in the
heart of Bayesian Inference. Let’s understand it in detail now.

**Bayes Theorem**

Bayes Theorem comes into effect when multiple events form an exhaustive
set with another event B.

B can be written as:

![]()

The probability of B can be written as:

![]()

Where,

\!()\[\]

So, using the conditional probability equation and a little bit of
reconfiguring we can derive:

This is the **Bayes Theorem Equation**.

**Bayesian Inference**

The field of bayesian statistics is about leveraging this Bayes Theorem
equation to make inferences about the probability of a particular
hypothesis. Lets consider a set of coin tosses to explore this idea:

An important part of bayesian inference is the establishment of
parameters and models.

Models are the mathematical formulation of the observed events.
Parameters are the factors in the models affecting the observed data.
For example, in tossing a coin, fairness of coin may be defined as the
parameter of coin denoted by θ. The outcome of the events may be denoted
by D.

Answer this now. What is the probability of 4 heads out of 9 tosses(D)
given the fairness of coin (θ). i.e P(D|θ)

Wait, did I ask the right question? No.

We should be more interested in knowing : Given an outcome (D) what is
the probbaility of coin being fair (θ=0.5)

Lets represent it using Bayes Theorem:

P(θ|D)=(P(D|θ) X P(θ))/P(D)

Here, P(θ) is the prior i.e the strength of our belief in the fairness
of coin before the toss. It is perfectly okay to believe that coin can
have any degree of fairness between 0 and 1.

P(D|θ) is the likelihood of observing our result given our distribution
for θ. If we knew that coin was fair, this gives the probability of
observing the number of heads in a particular number of flips.

P(D) is the evidence. This is the probability of data as determined by
summing (or integrating) across all possible values of θ, weighted by
how strongly we believe in those particular values of θ.

If we had multiple views of what the fairness of the coin is (but didn’t
know for sure), then this tells us the probability of seeing a certain
sequence of flips for all possibilities of our belief in the coin’s
fairness.

P(θ|D) is the posterior belief of our parameters after observing the
evidence i.e the number of heads .

From here, we’ll dive deeper into mathematical implications of this
concept. Don’t worry. Once you understand them, getting to its
mathematics is pretty easy.

To define our model correctly , we need two mathematical models before
hand. One to represent the likelihood function P(D|θ) and the other for
representing the distribution of prior beliefs . The product of these
two gives the posterior belief P(θ|D) distribution.

Since prior and posterior are both beliefs about the distribution of
fairness of coin, intuition tells us that both should have the same
mathematical form. Keep this in mind. We will come back to it again.

So, there are several functions which support the existence of bayes
theorem. Knowing them is important, hence I have explained them in
detail.

## Bayesian Modelling using BRMS
