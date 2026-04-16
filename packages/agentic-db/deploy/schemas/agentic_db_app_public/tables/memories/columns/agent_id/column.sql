-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/indexes/calendar_event_tasks_task_id_idx


ALTER TABLE agentic_db_app_public.memories 
  ADD COLUMN agent_id uuid;

