-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/constraints/org_grants_pkey/constraint


ALTER TABLE agentic_db_memberships_public.org_grants 
  DROP CONSTRAINT org_grants_pkey;


