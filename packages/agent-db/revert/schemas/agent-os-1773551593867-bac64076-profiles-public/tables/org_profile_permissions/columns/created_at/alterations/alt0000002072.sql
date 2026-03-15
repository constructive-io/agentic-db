-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/created_at/alterations/alt0000002072


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  ALTER COLUMN created_at DROP DEFAULT;


