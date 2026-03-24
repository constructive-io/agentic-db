-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/triggers/agent_tasks_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_private/trigger_fns/agent_tasks_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER agent_tasks_enqueue_chunking_update_tg
AFTER UPDATE ON "agentic_db_app_public".agent_tasks
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".agent_tasks_enqueue_chunking ( );

