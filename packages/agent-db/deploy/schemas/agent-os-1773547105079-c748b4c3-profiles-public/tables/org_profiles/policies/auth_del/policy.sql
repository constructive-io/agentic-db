-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/table


CREATE POLICY auth_del ON "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles
FOR DELETE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      (org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000010000000') = '000000000000000010000000')) AND is_system IS FALSE
);

