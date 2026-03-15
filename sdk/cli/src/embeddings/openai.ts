/**
 * OpenAI embedding and chat provider
 */
import { EmbeddingProvider, ChatProvider, RagProviderConfig } from './provider';

export class OpenAIEmbeddingProvider implements EmbeddingProvider {
  name = 'openai';
  private apiKey: string;
  private model: string;

  constructor(config: RagProviderConfig) {
    if (!config.openaiApiKey) {
      throw new Error(
        'OpenAI API key required. Set it via:\n  agent-db config set openaiApiKey <key>'
      );
    }
    this.apiKey = config.openaiApiKey;
    this.model = config.embeddingModel || 'text-embedding-3-small';
  }

  async embed(text: string): Promise<number[]> {
    const response = await fetch('https://api.openai.com/v1/embeddings', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${this.apiKey}`,
      },
      body: JSON.stringify({ model: this.model, input: text }),
    });

    if (!response.ok) {
      throw new Error(`OpenAI embed failed (${response.status}): ${await response.text()}`);
    }

    const data = (await response.json()) as { data: Array<{ embedding: number[] }> };
    return data.data[0].embedding;
  }
}

export class OpenAIChatProvider implements ChatProvider {
  name = 'openai';
  private apiKey: string;
  private model: string;

  constructor(config: RagProviderConfig) {
    if (!config.openaiApiKey) {
      throw new Error(
        'OpenAI API key required. Set it via:\n  agent-db config set openaiApiKey <key>'
      );
    }
    this.apiKey = config.openaiApiKey;
    this.model = config.chatModel || 'gpt-4o-mini';
  }

  async chat(
    messages: Array<{ role: 'system' | 'user' | 'assistant'; content: string }>
  ): Promise<string> {
    const response = await fetch('https://api.openai.com/v1/chat/completions', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${this.apiKey}`,
      },
      body: JSON.stringify({ model: this.model, messages }),
    });

    if (!response.ok) {
      throw new Error(`OpenAI chat failed (${response.status}): ${await response.text()}`);
    }

    const data = (await response.json()) as {
      choices: Array<{ message: { content: string } }>;
    };
    return data.choices[0].message.content;
  }
}
