-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/columns/name/alterations/alt0000002137
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/columns/name/column


ALTER TABLE agentic_db_memberships_public.membership_types 
  ALTER COLUMN name SET NOT NULL;

