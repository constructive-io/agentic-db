#!/usr/bin/env node
/**
 * Extended CLI entry point for agentic-db
 *
 * Wraps the generated CLI commands and adds RAG-specific commands:
 *   search, ask, embed, config
 *
 * This file does NOT modify generated code — it imports the generated
 * command handler and intercepts RAG commands before delegating.
 */
import { CLI, CLIOptions, extractFirst, getPackageJson,Inquirerer } from 'inquirerer';

// The generated commands handler (handles all CRUD commands)
import { commands as generatedHandler } from '../generated/cli/commands';
import askCmd from './commands/ask';
import configCmd from './commands/config';
import docsCmd from './commands/docs';
import embedCmd from './commands/embed';
// RAG command imports (hand-written, not generated)
import searchCmd from './commands/search';

type CommandFn = (
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer,
  options: CLIOptions
) => Promise<void | Partial<Record<string, unknown>>>;

/** Custom commands — checked before generated commands */
const customCommands: Record<string, CommandFn> = {
  search: searchCmd,
  ask: askCmd,
  embed: embedCmd,
  config: configCmd,
  docs: docsCmd,
};

const EXTENDED_HELP = `
RAG Commands:
  search               Semantic search across all tables
  ask                  Ask a question (RAG: search + LLM)
  embed                Generate vector embeddings for records
  config               Manage RAG configuration

Document Commands:
  docs import <dir>    Import text files into the documents table
  docs export <dir>    Export documents to a directory
  docs list            List documents for a repository
`;

const commands = async (
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer,
  options: CLIOptions
) => {
  // Show extended help that includes custom commands
  if (argv.help || argv.h) {
    console.log(EXTENDED_HELP);
    // Fall through to generated handler which prints CRUD commands
    return generatedHandler(argv, prompter, options);
  }

  // Peek at the first positional arg to check for RAG commands
  const { first: command, newArgv } = extractFirst(argv);

  if (command && customCommands[command]) {
    await customCommands[command](newArgv, prompter, options);
    prompter.close();
    return argv;
  }

  // Not a RAG command — delegate entirely to generated handler
  return generatedHandler(argv, prompter, options);
};

// Entry point
if (process.argv.includes('--version') || process.argv.includes('-v')) {
  const pkg = getPackageJson(__dirname);
  console.log(pkg.version);
  process.exit(0);
}

const ttyIdx = process.argv.indexOf('--tty');
const noTty = ttyIdx !== -1 && process.argv[ttyIdx + 1] === 'false';

const options: Partial<CLIOptions> = {
  noTty,
  minimistOpts: { alias: { v: 'version', h: 'help' } },
};

const app = new CLI(commands, options);
app.run().catch((e: Error) => {
  console.error('Unexpected error:', e);
  process.exit(1);
});
