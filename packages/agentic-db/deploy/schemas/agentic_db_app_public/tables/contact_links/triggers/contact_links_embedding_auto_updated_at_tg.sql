-- Deploy: schemas/agentic_db_app_public/tables/contact_links/triggers/contact_links_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_private/trigger_fns/contact_links_embedding_auto_updated_at


CREATE TRIGGER contact_links_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.contact_links
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.contact_links_embedding_auto_updated_at ( );

