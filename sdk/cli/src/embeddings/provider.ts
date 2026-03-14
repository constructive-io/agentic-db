/**
 * Embedding provider interface and factory
 */

export interface EmbeddingProvider {
  embed(text: string): Promise<number[]>;
  name: string;
}

export interface ChatProvider {
  chat(messages: Array<{ role: 'system' | 'user' | 'assistant'; content: string }>): Promise<string>;
  name: string;
}

export interface RagProviderConfig {
  provider: 'ollama' | 'openai';
  ollamaUrl?: string;
  embeddingModel?: string;
  chatModel?: string;
  openaiApiKey?: string;
}

export const DEFAULT_RAG_CONFIG: RagProviderConfig = {
  provider: 'ollama',
  ollamaUrl: 'http://localhost:11434',
  embeddingModel: 'nomic-embed-text',
  chatModel: 'llama3.2',
};
