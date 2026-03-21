-- Deploy: schemas/agentic_db_app_public/tables/company_links/constraints/company_links_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/embedding/column


ALTER TABLE "agentic_db_app_public".company_links 
  ADD CONSTRAINT company_links_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

