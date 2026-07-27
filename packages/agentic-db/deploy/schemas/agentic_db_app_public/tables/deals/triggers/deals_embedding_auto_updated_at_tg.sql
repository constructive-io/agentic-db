-- Deploy: schemas/agentic_db_app_public/tables/deals/triggers/deals_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_private/trigger_fns/deals_embedding_auto_updated_at


CREATE TRIGGER deals_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.deals
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.deals_embedding_auto_updated_at ( );

