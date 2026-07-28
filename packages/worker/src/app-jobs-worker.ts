/**
 * Minimal worker for the `app_jobs` queue deployed with agentic-db.
 *
 * The schema's triggers enqueue work via `app_jobs.add_job(...)` into
 * `app_jobs.jobs` — its own queue tables with `get_job` / `complete_job` /
 * `fail_job` claiming procedures (graphile-worker-style semantics, but NOT
 * the `graphile_worker` schema, so the graphile-worker npm runner never
 * sees these jobs).
 */

export interface Queryable {
  query(sql: string, params?: unknown[]): Promise<{ rows: any[] }>;
}

export interface Logger {
  info(msg: string): void;
  error(msg: string): void;
}

export interface TaskHelpers {
  pg: Queryable;
  logger: Logger;
}

export type Task = (payload: unknown, helpers: TaskHelpers) => Promise<void>;

export type TaskList = Record<string, Task>;

export interface AppJobsJob {
  id: string;
  task_identifier: string;
  payload: unknown;
}

/**
 * Claim and run a single job. Returns the job if one was claimed (whether it
 * succeeded or failed), or null if the queue is empty.
 */
export async function runOneJob(
  pg: Queryable,
  taskList: TaskList,
  workerId: string,
  logger: Logger
): Promise<AppJobsJob | null> {
  const identifiers = Object.keys(taskList);
  const { rows } = await pg.query(
    `SELECT id, task_identifier, payload
       FROM app_jobs.get_job($1, $2::text[])
      WHERE id IS NOT NULL`,
    [workerId, identifiers]
  );
  const job: AppJobsJob | undefined = rows[0];
  if (!job) return null;

  const task = taskList[job.task_identifier];
  try {
    if (!task) {
      throw new Error(`No task registered for "${job.task_identifier}"`);
    }
    await task(job.payload, { pg, logger });
    await pg.query(`SELECT app_jobs.complete_job($1, $2)`, [workerId, job.id]);
    logger.info(`✓ ${job.task_identifier} (job ${job.id})`);
  } catch (err) {
    const message = err instanceof Error ? err.message : String(err);
    await pg.query(`SELECT app_jobs.fail_job($1, $2, $3)`, [
      workerId,
      job.id,
      message,
    ]);
    logger.error(`✗ ${job.task_identifier} (job ${job.id}): ${message}`);
  }
  return job;
}

/**
 * Drain the queue: run jobs until none are available. Returns the number of
 * jobs processed. Useful for tests and one-shot invocations.
 */
export async function drainJobs(
  pg: Queryable,
  taskList: TaskList,
  workerId = `worker-${process.pid}`,
  logger: Logger = console
): Promise<number> {
  let count = 0;
  // eslint-disable-next-line no-constant-condition
  while (true) {
    const job = await runOneJob(pg, taskList, workerId, logger);
    if (!job) return count;
    count++;
  }
}
