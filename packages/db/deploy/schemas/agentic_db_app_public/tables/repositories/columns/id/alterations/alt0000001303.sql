-- Deploy: schemas/agentic_db_app_public/tables/repositories/columns/id/alterations/alt0000001303
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".repositories 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

