-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/created_at/alterations/alt0000000935
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/notes/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".notes 
    ALTER COLUMN created_at SET DEFAULT now();

