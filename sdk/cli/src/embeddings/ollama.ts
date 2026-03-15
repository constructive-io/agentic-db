/**
 * Ollama embedding and chat provider
 */
import { EmbeddingProvider, ChatProvider, RagProviderConfig, DEFAULT_RAG_CONFIG } from './provider';

export class OllamaEmbeddingProvider implements EmbeddingProvider {
  name = 'ollama';
  private url: string;
  private model: string;

  constructor(config: RagProviderConfig = DEFAULT_RAG_CONFIG) {
    this.url = config.ollamaUrl || DEFAULT_RAG_CONFIG.ollamaUrl!;
    this.model = config.embeddingModel || DEFAULT_RAG_CONFIG.embeddingModel!;
  }

  async embed(text: string): Promise<number[]> {
    const response = await fetch(`${this.url}/api/embeddings`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ model: this.model, prompt: text }),
    });

    if (!response.ok) {
      throw new Error(`Ollama embed failed (${response.status}): ${await response.text()}`);
    }

    const data = (await response.json()) as { embedding: number[] };
    return data.embedding;
  }
}

export class OllamaChatProvider implements ChatProvider {
  name = 'ollama';
  private url: string;
  private model: string;

  constructor(config: RagProviderConfig = DEFAULT_RAG_CONFIG) {
    this.url = config.ollamaUrl || DEFAULT_RAG_CONFIG.ollamaUrl!;
    this.model = config.chatModel || DEFAULT_RAG_CONFIG.chatModel!;
  }

  async chat(
    messages: Array<{ role: 'system' | 'user' | 'assistant'; content: string }>
  ): Promise<string> {
    const response = await fetch(`${this.url}/api/chat`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ model: this.model, messages, stream: false }),
    });

    if (!response.ok) {
      throw new Error(`Ollama chat failed (${response.status}): ${await response.text()}`);
    }

    const data = (await response.json()) as { message: { content: string } };
    return data.message.content;
  }
}
