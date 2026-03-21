-- Deploy: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/id/alterations/alt0000000916
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/id/column



ALTER TABLE "agentic_db_memberships_public".app_membership_defaults 
    ALTER COLUMN id SET DEFAULT uuidv7();

