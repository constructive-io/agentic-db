-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/profile_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions 
  ADD COLUMN profile_id uuid;

