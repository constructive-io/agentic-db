-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  DROP COLUMN created_at RESTRICT;


