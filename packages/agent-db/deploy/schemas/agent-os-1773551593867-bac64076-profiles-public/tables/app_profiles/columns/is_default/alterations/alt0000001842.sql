-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/is_default/alterations/alt0000001842
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/is_default/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".app_profiles.is_default IS 'The default profile is automatically assigned to new members when they join';

