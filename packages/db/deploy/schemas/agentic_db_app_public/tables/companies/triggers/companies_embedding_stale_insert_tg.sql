-- Deploy: schemas/agentic_db_app_public/tables/companies/triggers/companies_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_private/trigger_fns/companies_embedding_stale
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER companies_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".companies
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".companies_embedding_stale ( );

