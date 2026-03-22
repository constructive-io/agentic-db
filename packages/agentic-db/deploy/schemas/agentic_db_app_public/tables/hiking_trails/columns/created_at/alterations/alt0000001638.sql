-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/created_at/alterations/alt0000001638
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".hiking_trails 
    ALTER COLUMN created_at SET DEFAULT now();

