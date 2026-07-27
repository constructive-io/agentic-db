-- Deploy: schemas/agentic_db_app_public/tables/companies/triggers/companies_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_private/trigger_fns/companies_search_tsv_tsv


CREATE TRIGGER companies_search_tsv_tsv_insert_tg
BEFORE INSERT ON agentic_db_app_public.companies
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_app_private.companies_search_tsv_tsv ( );

