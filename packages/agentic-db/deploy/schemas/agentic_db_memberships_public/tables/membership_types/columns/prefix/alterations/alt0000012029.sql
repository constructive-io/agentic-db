-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000012029
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/columns/prefix/column


ALTER TABLE agentic_db_memberships_public.membership_types 
  ALTER COLUMN prefix SET NOT NULL;

