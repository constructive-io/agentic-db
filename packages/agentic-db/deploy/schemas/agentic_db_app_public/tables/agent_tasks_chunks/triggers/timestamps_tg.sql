-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks_chunks/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_app_public.agent_tasks_chunks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

