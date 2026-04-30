-- Deploy: schemas/agentic_db_app_public/tables/companies/triggers/companies_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_private/trigger_fns/companies_enqueue_embedding
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE TRIGGER companies_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.companies
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".companies_enqueue_embedding ( );

