-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/columns/id/alterations/alt0000002147
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/columns/id/column



ALTER TABLE agentic_db_permissions_public.app_permissions 
    ALTER COLUMN id SET DEFAULT uuidv7();

