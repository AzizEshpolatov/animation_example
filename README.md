# Flutter Animation Examples

There are two main ways to create animations in Flutter: **Implicit Animation** and **Explicit
Animation**.

## Table of Contents

1. [Introduction](#introduction)
2. [Implicit Animations](#implicit-animations)
3. [Explicit Animations](#explicit-animations)
4. [Comparison](#comparison)
5. [Conclusion](#conclusion)

## Introduction

In Flutter, animations can be used to make user interface elements interactive. There are two main
types of animations in Flutter: **Implicit** (automatic) and **Explicit** (controlled) animations.

## Implicit Animations

Implicit animations allow you to create animations in a simplified way. In these animations, you
only need to change animation parameters, and the animation happens automatically.

### Examples:

- `AnimatedOpacity`
- `AnimatedSize`
- `AnimatedPositioned`

### Capabilities:

- **AnimatedAlign** → **AlignTransition**
- **AnimatedContainer** → **DecoratedBoxTransition**
- **AnimatedOpacity** → **FadeTransition**

## Explicit Animations

Explicit animations give you more control and allow you to create more customized animations. These
animations use **Ticker**, **Animation Class**, and **Animation Controller** classes.

### Examples:

- **Tween**
- **Animation Class**
- **Animation Controller**

### Capabilities:

- **Tween** → **SizeTransition**
- **AnimationController** → **RotationTransition**

## Comparison

| **Implicit Animations** | **Explicit Animations**      |
|-------------------------|------------------------------|
| AnimatedOpacity         | FadeTransition               |
| AnimatedSize            | SizeTransition               |
| AnimatedPositioned      | PositionedTransition         |
| AnimatedPhysicalModel   | RelativePositionedTransition |
| AnimatedAlign           | AlignTransition              |

## Conclusion

There are two main ways to work with animations in Flutter: **Implicit** and **Explicit**
animations. Implicit animations allow you to quickly create animations in a simplified way. Explicit
animations provide more control and customization, making them ideal for creating more interactive
user experiences.

### Resources

- [Flutter Animations Documentation](https://flutter.dev/docs/development/ui/animations)
