-- Deploy: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/id/alterations/alt0000009549
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limit_defaults/table
-- requires: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/id/column



ALTER TABLE agentic_db_limits_public.app_limit_defaults 
    ALTER COLUMN id SET DEFAULT uuidv7();

