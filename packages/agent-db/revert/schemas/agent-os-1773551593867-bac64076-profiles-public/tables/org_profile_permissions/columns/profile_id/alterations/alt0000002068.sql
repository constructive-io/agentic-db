-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/profile_id/alterations/alt0000002068


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  ALTER COLUMN profile_id DROP NOT NULL;


