-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_grants/constraints/org_profile_grants_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_grants 
  DROP CONSTRAINT org_profile_grants_entity_id_fkey;


