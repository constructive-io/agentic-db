-- Deploy: schemas/agentic_db_app_public/tables/prompts/triggers/prompts_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_private/trigger_fns/prompts_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER prompts_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".prompts
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.content IS DISTINCT FROM NEW.content)
EXECUTE PROCEDURE "agentic_db_private".prompts_embedding_stale ( );

