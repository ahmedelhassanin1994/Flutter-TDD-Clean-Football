# Flutter-TDD-Clean-Football
 In clean code architecture, there are three main layers

* Data
* Domain
* Presentation along with
common (can also be called as core)
Domain
This is innermost layer and will contain the core business logic i.e. usecases and business object also called as entities, the usecase depends on the contract of repository (not implementation)

Data
The data layers contains the repository implementation and this layer is closest to actual data sources and is responsible for communication with data sources.

The data layer returns the models and not entities and the model also contains the fromJson and toJson mapper.

Note: We don’t have an extra mapper class, we are just going to leverage the named constructor by dart to map our data set from one form to our models. toJson and fromJson.

Presentation
This layer contains all the information about the UI and everything to show to the end user customer. The presentation layer also contains the bloc which is the state management and often termed as brain of UI.

The presentation layer interact via domain layer, i.e entities and use cases.

![Simulator Screen Shot - iPhone 13 Pro - 2023-02-04 at 03 24 55](https://user-images.githubusercontent.com/64086484/216766661-b4e0fc93-3268-4bea-ad2e-f37735873a6d.png)


