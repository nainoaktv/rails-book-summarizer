class AiController < ApplicationController
  def generate_text
    response = Openai::Completion.create(
      engine: 'text-davinci-002',
      prompt: 'Translate the following English text to French: "Hello, world!"',
      max_tokens: 50
    )

    @generated_text = response.choices.first.text
  end
end
