-- Deploy: schemas/agentic_db_app_public/tables/agents/triggers/agents_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER agents_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".agents
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.description IS DISTINCT FROM NEW.description OR OLD.system_prompt IS DISTINCT FROM NEW.system_prompt)
EXECUTE PROCEDURE "agentic_db_private".agents_embedding_stale ( );

