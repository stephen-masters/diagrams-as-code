# diagrams-as-code
Examples of embedding various diagrams into an Asciidoctor document.

### Asciidoctor

This project makes use of Asciidoctor to generate rich documentation. This is a https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/[simple markdown syntax], which is particularly good for generating richhly formatted HTML and PDF output.

If you install Ruby, a Gemfile is provided here, which installs both Asciidoctor and Aciidoctor Diagram, in which case you can run.

```
bundle
```


### BPMN diagrams

There are a number of diagrams in the project, using BPMN. You can edit these files using the free https://demo.bpmn.io/[BPMN.IO] editor, or one of a number of other tools such as https://camunda.com/[Camunda], https://online.visual-paradigm.com/diagrams/features/bpmn-tool/[Visual Paradigm], or https://www.eclipse.org/bpmn2-modeler/[Eclipse].

These use https://asciidoctor.org/docs/asciidoctor-diagram/[asciidoctor-diagram] to generate the images for embedding in the final document. See the contents of `build.sh` for an example of using this.

Some of the documentation tooling requires graphviz to be installed, which can be done as follows:

```
# Windows:
choco install graphviz
# Mac:
brew install graphviz
```
