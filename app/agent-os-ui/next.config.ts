import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  typedRoutes: true,
  // Enable smaller standalone production output for Docker runtime
  output: 'standalone',
};

export default nextConfig;
