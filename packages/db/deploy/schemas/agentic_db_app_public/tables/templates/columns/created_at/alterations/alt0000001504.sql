-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/created_at/alterations/alt0000001504
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/templates/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".templates 
    ALTER COLUMN created_at SET DEFAULT now();

