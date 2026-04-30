-- Deploy: schemas/agentic_db_app_public/tables/agents/triggers/agents_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_private/trigger_fns/agents_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER agents_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.agents
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".agents_embedding_stale ( );

