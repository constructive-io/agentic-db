-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/updated_at/alterations/alt0000002073


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  ALTER COLUMN updated_at DROP DEFAULT;


