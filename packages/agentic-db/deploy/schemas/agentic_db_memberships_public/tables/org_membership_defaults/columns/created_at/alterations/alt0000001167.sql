-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/created_at/alterations/alt0000001167
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/created_at/column


ALTER TABLE "agentic_db_memberships_public".org_membership_defaults 
  ALTER COLUMN created_at SET DEFAULT now();

