-- Deploy: schemas/agentic_db_app_public/tables/companies/triggers/companies_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table


CREATE TRIGGER companies_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".companies
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".companies_embedding_stale ( );

