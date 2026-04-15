-- Deploy: schemas/agentic_db_app_public/tables/companies/triggers/companies_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table


CREATE TRIGGER companies_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".companies
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".companies_enqueue_chunking ( );

