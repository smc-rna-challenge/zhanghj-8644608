baseCommand: [convert_star_to_bedpe.py]
class: CommandLineTool
cwlVersion: v1.0
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/zhanghj-8644608-star:1.0.0'}
inputs:
- id: input
  inputBinding: {position: 1}
  type: File
- {id: output, type: string}
outputs:
- id: fusionout
  outputBinding: {glob: $(inputs.output)}
  type: File
requirements:
- {class: InlineJavascriptRequirement}
stdout: $(inputs.output)
