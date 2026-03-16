/**
 * CLI command: agentic-db config <subcommand>
 *
 * Manage RAG configuration (embedding provider, models, API keys).
 */
import { CLIOptions, Inquirerer, extractFirst } from 'inquirerer';
import { getRagConfig, setRagConfigValue } from '../rag-config';

const VALID_KEYS = [
  'provider',
  'ollamaUrl',
  'embeddingModel',
  'chatModel',
  'openaiApiKey',
];

const usage = `
config <subcommand>

  Manage RAG and embedding configuration.

Subcommands:
  show                  Show current RAG config
  set <key> <value>     Set a config value
  reset                 Reset to defaults

Valid keys: ${VALID_KEYS.join(', ')}

Examples:
  agentic-db config show
  agentic-db config set provider openai
  agentic-db config set openaiApiKey sk-...
  agentic-db config set ollamaUrl http://localhost:11434
  agentic-db config set embeddingModel nomic-embed-text
  agentic-db config set chatModel llama3.2
  agentic-db config reset
`;

export default async (
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer,
  _options: CLIOptions
) => {
  if (argv.help || argv.h) {
    console.log(usage);
    return;
  }

  const { first: subcommand, newArgv } = extractFirst(argv);

  if (!subcommand) {
    const answer = await prompter.prompt(argv, [
      {
        type: 'autocomplete',
        name: 'subcommand',
        message: 'What do you want to do?',
        options: ['show', 'set', 'reset'],
      },
    ]);
    return handleSubcommand(answer.subcommand as string, newArgv, prompter);
  }

  return handleSubcommand(subcommand, newArgv, prompter);
};

async function handleSubcommand(
  subcommand: string,
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer
) {
  switch (subcommand) {
    case 'show':
      return handleShow();
    case 'set':
      return handleSet(argv, prompter);
    case 'reset':
      return handleReset();
    default:
      console.log(usage);
      process.exit(1);
  }
}

function handleShow() {
  const config = getRagConfig();
  console.log('\nRAG Configuration:\n');
  console.log(`  provider:       ${config.provider}`);
  console.log(`  ollamaUrl:      ${config.ollamaUrl || '(not set)'}`);
  console.log(`  embeddingModel: ${config.embeddingModel || '(not set)'}`);
  console.log(`  chatModel:      ${config.chatModel || '(not set)'}`);
  console.log(`  openaiApiKey:   ${config.openaiApiKey ? '****' + config.openaiApiKey.slice(-4) : '(not set)'}`);
  console.log('');
}

async function handleSet(argv: Partial<Record<string, unknown>>, prompter: Inquirerer) {
  const { first: key, newArgv } = extractFirst(argv);
  let configKey = key;
  let configValue: string;

  if (!configKey) {
    const answers = await prompter.prompt(argv, [
      {
        type: 'autocomplete',
        name: 'key',
        message: 'Config key:',
        options: VALID_KEYS,
      },
    ]);
    configKey = answers.key as string;
  }

  if (!VALID_KEYS.includes(configKey)) {
    console.error(`Invalid config key: ${configKey}`);
    console.error(`Valid keys: ${VALID_KEYS.join(', ')}`);
    process.exit(1);
  }

  const { first: val } = extractFirst(newArgv);
  if (val) {
    configValue = val;
  } else {
    const answers = await prompter.prompt(newArgv, [
      {
        type: 'text',
        name: 'value',
        message: `Value for ${configKey}:`,
        required: true,
      },
    ]);
    configValue = answers.value as string;
  }

  setRagConfigValue(configKey, configValue);
  console.log(`Set ${configKey} = ${configKey === 'openaiApiKey' ? '****' : configValue}`);
}

function handleReset() {
  const { resetRagConfig } = require('../rag-config') as typeof import('../rag-config');
  resetRagConfig();
  console.log('RAG configuration reset to defaults.');
}
