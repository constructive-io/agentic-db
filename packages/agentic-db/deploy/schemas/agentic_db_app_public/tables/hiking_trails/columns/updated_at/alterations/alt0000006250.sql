-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/updated_at/alterations/alt0000006250
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.hiking_trails 
    ALTER COLUMN updated_at SET DEFAULT now();

