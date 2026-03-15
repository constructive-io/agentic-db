-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/permission_id/alterations/alt0000002094


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_definition_grants 
  ALTER COLUMN permission_id DROP NOT NULL;


