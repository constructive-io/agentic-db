-- Deploy: schemas/agentic_db_app_public/tables/expenses/triggers/expenses_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_private/trigger_fns/expenses_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER expenses_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.expenses
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".expenses_embedding_stale ( );

