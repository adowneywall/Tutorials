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
as it considered in the two different methods. Here we illustrate two
distinct definitions which encompass either frequentist or bayesian
thought:

R.A. Fisher – Probability as Long-Term Frequency (a frequentist
approach):

    The probability of an event is equal to the long-term frequency of the event occurring when the same process is repeated multiple times. 

As per this definition, the probability of a coin toss resulting in
heads is 0.5 because rolling the die many times over a long period
results roughly in those odds. \`\`\`

Rudolf Carnap - Logical Probability (a bayesian approach)
    :

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

**Comparison Example**

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

### Bayesian approach

![](https://github.com/adowneywall/Tutorials/blob/master/img/bayesianDistributions.png)

### Conditional Probability

### Bayes Theorem

## Bayesian Modelling using BRMS
