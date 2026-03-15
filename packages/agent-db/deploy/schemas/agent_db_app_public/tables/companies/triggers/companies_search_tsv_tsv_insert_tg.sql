-- Deploy: schemas/agent_db_app_public/tables/companies/triggers/companies_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_private/trigger_fns/companies_search_tsv_tsv
-- requires: schemas/agent_db_app_public/tables/contacts/triggers/contacts_search_tsv_tsv_update_tg


CREATE TRIGGER companies_search_tsv_tsv_insert_tg
BEFORE INSERT ON agent_db_app_public.companies
FOR EACH ROW
EXECUTE PROCEDURE agent_db_private.companies_search_tsv_tsv ( );

