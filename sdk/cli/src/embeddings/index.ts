/**
 * Embedding provider factory
 */
export { EmbeddingProvider, ChatProvider, RagProviderConfig, DEFAULT_RAG_CONFIG } from './provider';
export { OllamaEmbeddingProvider, OllamaChatProvider } from './ollama';
export { OpenAIEmbeddingProvider, OpenAIChatProvider } from './openai';

import { EmbeddingProvider, ChatProvider, RagProviderConfig, DEFAULT_RAG_CONFIG } from './provider';
import { OllamaEmbeddingProvider, OllamaChatProvider } from './ollama';
import { OpenAIEmbeddingProvider, OpenAIChatProvider } from './openai';

export function createEmbeddingProvider(config: RagProviderConfig = DEFAULT_RAG_CONFIG): EmbeddingProvider {
  switch (config.provider) {
    case 'openai':
      return new OpenAIEmbeddingProvider(config);
    case 'ollama':
    default:
      return new OllamaEmbeddingProvider(config);
  }
}

export function createChatProvider(config: RagProviderConfig = DEFAULT_RAG_CONFIG): ChatProvider {
  switch (config.provider) {
    case 'openai':
      return new OpenAIChatProvider(config);
    case 'ollama':
    default:
      return new OllamaChatProvider(config);
  }
}
