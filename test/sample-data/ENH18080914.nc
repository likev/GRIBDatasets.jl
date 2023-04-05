CDF      
      time       lon    
   lat       lev       nhyi   �   nhym   �   height        height_2            CDI       @Climate Data Interface version 2.1.1 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.6     institution       2European Centre for Medium-Range Weather Forecasts     history       �Tue Apr 04 16:26:37 2023: cdo -f nc copy /home/tcarion/.julia/dev/GRIBDatasets/test/sample-data/ENH18080914 /home/tcarion/.julia/dev/GRIBDatasets/test/sample-data/ENH18080914.nc      CDO       @Climate Data Operators version 2.1.1 (https://mpimet.mpg.de/cdo)      #   time                standard_name         time   units         hours since 2018-8-9 12:00:00      calendar      proleptic_gregorian    axis      T               .    lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X         P      8   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y         8      �   lev                standard_name         hybrid_sigma_pressure      	long_name         hybrid level at layer midpoints    formula       hyam hybm (mlev=hyam+hybm*aps)     formula_terms         ap: hyam b: hybm ps: aps   units         level      positive      down             �   hyai               	long_name         (hybrid A coefficient at layer interfaces   units         Pa       P      �   hybi               	long_name         (hybrid B coefficient at layer interfaces   units         1        P      !0   hyam               	long_name         'hybrid A coefficient at layer midpoints    units         Pa       H      %�   hybm               	long_name         'hybrid B coefficient at layer midpoints    units         1        H      )�   height                 standard_name         height     	long_name         height     units         m      positive      up     axis      Z               .   height_2               standard_name         height     	long_name         height     units         m      positive      up     axis      Z               .   u                            standard_name         eastward_wind      	long_name         U component of wind    units         m s**-1    param         2.2.0        `      .(   v                            standard_name         northward_wind     	long_name         V component of wind    units         m s**-1    param         3.2.0        `      2�   etadot                           	long_name          Eta-coordinate vertical velocity   units         s**-1      param         32.2.0       `      6�   t                            standard_name         air_temperature    	long_name         Temperature    units         K      param         0.0.0        `      ;H   sp                        standard_name         surface_air_pressure   	long_name         Surface pressure   units         Pa     param         0.3.0              ?�   q                            standard_name         specific_humidity      	long_name         Specific humidity      units         	kg kg**-1      param         0.1.0        `      @�   lsp                       standard_name         0lwe_thickness_of_stratiform_precipitation_amount   	long_name         Large-scale precipitation      units         m      param         142.128.192            E    acpcp                         standard_name         0lwe_thickness_of_convective_precipitation_amount   	long_name          Convective precipitation (water)   units         kg m**-2   param         10.1.0             F8   sshf                      standard_name         !surface_upward_sensible_heat_flux      	long_name         Surface sensible heat flux     units         J m**-2    param         11.0.0             GP   ewss                      standard_name          surface_downward_eastward_stress   	long_name         !Eastward turbulent surface stress      units         	N m**-2 s      param         38.2.0             Hh   nsss                      standard_name         !surface_downward_northward_stress      	long_name         "Northward turbulent surface stress     units         	N m**-2 s      param         37.2.0             I�   ssr                       standard_name         #surface_net_downward_shortwave_flux    	long_name         Surface net solar radiation    units         J m**-2    param         9.4.0              J�   sd                        standard_name         $lwe_thickness_of_surface_snow_amount   	long_name         
Snow depth     units         m of water equivalent      param         254.1.0            K�   msl                       standard_name         air_pressure_at_mean_sea_level     	long_name         Mean sea level pressure    units         Pa     param         0.3.0              L�   tcc                       standard_name         cloud_area_fraction    	long_name         Total cloud cover      units         (0 - 1)    param         164.128.192            M�   10u                          standard_name         eastward_wind      	long_name         10 metre U wind component      units         m s**-1    param         2.2.0              N�   10v                          standard_name         northward_wind     	long_name         10 metre V wind component      units         m s**-1    param         3.2.0              P   2t                           standard_name         air_temperature    	long_name         2 metre temperature    units         K      param         0.0.0              Q(   2d                           	long_name         2 metre dewpoint temperature   units         K      param         6.0.0              R@   z                         standard_name         geopotential   	long_name         Geopotential   units         
m**2 s**-2     param         4.3.0              SX   lsm                       standard_name         land_binary_mask   	long_name         Land-sea mask      units         (0 - 1)    param         0.0.2              Tp   sdor                      	long_name         Standard deviation of orography    units         m      param         160.128.192            U�   cvl                       	long_name         Low vegetation cover   units         (0 - 1)    param         
27.128.192             V�   cvh                       	long_name         High vegetation cover      units         (0 - 1)    param         
28.128.192             W�   sr                        standard_name         surface_roughness_length   	long_name         Surface roughness      units         m      param         1.0.2              X�        ?�      @       @      @      @      @      @      @       @"      @K      @J�     @J      @I�     @I      @H�     @H      @`�     @`�     @a      @a              @  �`   @�c�   @��   @O�@   @#~r`   @+5�    @2���   @8�X    @@~+�   @Ep�    @KzL�   @QaQ    @U�V    @Zڛ�   @`m��   @c���   @g�Հ   @l�   @pآ    @sƻ`   @w��   @z�z�   @~��@   @��N�   @��    @���    @���    @���`   @�4�    @�j    @�q    @�?�   @��}�   @���   @���   @�81    @���    @�C��   @��@   @���`   @�~=    @�k|�   @�p��   @���    @�b�@   @���@   @��&@   @���    @�L��   @��X@   @�    @�~�`   @����   @��ހ   @�/i�   @��Z�   @��C@   @��3@   @­W`   @è�@   @ĬP�   @ŶT�   @���   @���    @��o�   @�U�   @��`   @�0�   @�?��   @�J �   @�M�   @�#Ԡ   @М2�   @��@   @�{g�   @���   @�?n    @ҕҀ   @����   @�)�   @�d�    @Ӗ��   @Ӿ�   @��w@   @���   @���    @��n    @��t@   @��`�   @ӝŀ   @�h��   @�&$�   @�֎�   @�y]�   @�m@   @ѕ�@   @���   @�~,    @��    @�vY    @�:    @ˮ��   @�9�   @Ⱦ!    @�>��   @ž�    @�A�   @���    @�X:    @��`    @�.X    @��l    @��    @��b    @���    @�i`    @���    @�Bx    @��    @��H    @��|    @��     @���    @��0    @��     @��    @���    @���    @z��    @r�    @iO�    @^��    @Od     @6�     @ @                                                                                                                                                                                                                                                                                                                                                                                                                                                                   >d�+    >�[?    >����   ?�`�   ?Vq    ?*&�   ?6N��   ?Bf��   ?M'S�   ?V*�   ?`Q/�   ?gg��   ?pC��   ?v    ?}7�@   ?���    ?�-��   ?�W�    ?���   ?��0@   ?��S@   ?�yb�   ?�x2@   ?����   ?���    ?���    ?���    ?��`   ?����   ?�vQ�   ?����   ?���    ?��<�   ?Ù��   ?Ş�@   ?�Ĭ    ?�     ?�ug@   ?��    ?���   ?�C=�   ?���   ?�N��   ?���    ?ؙh�   ?�O�@   ?��    ?����   ?ߚl�   ?��   ?��    ?�tC    ?�Q�   ?�)@�   ?���    ?����   ?挦    ?�I��   ?��U`   ?�_�   ?�M�@   ?��    ?�x��   ?�    ?�w    ?��:�   ?�e��   ?���    ?�*�`   ?���   ?����   ?���   ?�^�`   ?��   ?���    ?�A    ?�3נ   ?�\�    ?�^    ?���   ?�U@   ?���   ?��    ?�      ?� �`   @i�   @��   @���   @ �/�   @'Z6@   @0o�   @5�p   @<�W�   @B�[`   @Huk�   @Owp   @S�S�   @XI��   @]��   @b+GP   @e��0   @j4�   @o"�   @rO��   @uk9�   @x�P   @|��   @��0   @��p   @�tV   @�F�   @�Y@@   @��/0   @�$   @��   @�*��   @�f�@   @��$�   @�U��   @�;    @���   @�{3�   @�`   @�ɽP   @����   @�t��   @�n6@   @��p   @��k�   @����   @�$��   @�_��   @��q`   @����   @�Y5�   @�ł�   @�?h�   @��ް   @�_�    @�b   @�_�H   @�E;@   @�3�P   @�+*P   @�*�   @�1R�   @�>.�   @�O�`   @�d��   @�z�   @ʑ�    @˦^    @̷�P   @����   @�˗�   @��\    @�`�   @�Ռ�   @�E'�   @ѮA�   @�D�   @�j�@   @Ҽ٠   @�q�   @�F��   @�}�P   @Ӫ�   @�Ͱ�   @��ŀ   @���`   @��y�   @��q    @��j�   @Ӳ    @Ӄ#�   @�GS    @��Y�   @ҧ�    @�C�`   @��@   @�R؀   @���   @�/׀   @���   @��ɀ   @�c��   @��F    @�|�   @��f@   @�~�@   @����   @Ä�@   @�~    @���    @���    @��b    @�Vz    @��u    @��    @�u�    @�n�    @�2    @���    @�Th    @�Yb    @���    @�I�    @��    @�Ř    @�+�    @��     @�\8    @�    @v�     @o�`    @dI`    @W@    @Eg�    @*�    ?� @                                                                                                                                                                                                                                                                                                                                                                                                                                                   >T�+    >̄Cv   >�OV�   ?�'�   ?dP�   ?$Y/�   ?1��   ?=���   ?G��P   ?R^��   ?[f9�   ?c܁`   ?k��0   ?s%rp   ?y�w�   ?����   ?����   ?�B��   ?���@   ?��!`   ?�@A�   ?�G�@   ?���p   ?�#��   ?��}�   ?��[�   ?�h�   ?��s@   ?�G|    ?�`   ?� ��   ?�3�`   ?���   ?¦�@   ?Ĝ:�   ?Ʊà   ?��V    ?�@��   ?ͻ��   ?�,��   ?ю    ?���   ?ԇy�   ?�A`   ?�Å�   ?�t�p   ?�/<    ?����   ?޶�   ?�?(�   ?�"}`   ?��   ?��p   ?�+P   ?䒅p   ?�a��   ?�*<�   ?��$`   ?��   ?�TZ�   ?���p   ?隢�   ?�0L�   ?��`   ?�@�   ?���   ?�.o�   ?��P   ?��H�   ?�V2   ?���0   ?����   ?�= �   ?�}e   ?��`   ?��    ?�P   ?�HK`   ?�o�   ?�   ?��   ?�ʲ`   ?����   ?��K    @$      @       @       ����>e_`���п@�������%������ߍ��0�c~r�x� ?J�x���4���T�����A��߉��ġ!��K-@>�@Y��>
4��{����]wR��k��w�Z��m-�� �@�\�@���@�p/?]X>�@�?��?��@�?�w�>�0@��GAC�A�@���@�Q�@Y��@iG�@~&@��@��O@�,GA ��A��A�$A��@ǵ�@ˏ�@��@�SA[@�ҳ@�A�NA�A�6@�Y�@��@��;@�ԿAZʿ��`>o� �lP��
[�����������i���������Nؾ��?D簾�� �&� �������l�Ґn��l������y,�@/�@O~l>%� �u�e��A0�fT<�bT������a�@��<@�:�@|	P?D��>�J�?��?�W�?��0?ζh>�9�@�4A�%@�q�@�o�@��@F��@R�<@_3 @��&@�W�@�
@�V�@�	BA�^A	�@�s|@��6@���@�p@��"@�oH@ֱ�@���A9�A�@��:@��$@��<@��X@��n��$�>i퀾>����$���	���;����������~5��4�@��l�?8� ��N`�E ���������Ȑ�����;��[��@�@?Sp>>E���������#��<���D�|�p���p�@���@�3.@k��?!�>͘�?gp?�D�?��?���>�f�@�^RA�@��@��>@��X@-�\@7S@:� @���@��N@��@��@�qj@��@��@�6�@�g�@��@���@ٚ�@�{�@ð�@�?�@�E�@���@��&@���@�E"@��f@�����L>@*���@�݈���A���l��N���%��dX:�����?�(��I������g�������Y��@��c��"u?�/�@X�>T� ��+D��l���X��bV��f�6��3�F@���@��@JҲ>�tp>�H�>�mp?`�x?��|?y�>KH`@�N�@��@��k@�@��M@~@��@72@P��@a��@�%q@�9�@�m�@ǔ�@�"�@q�6@u.@D��@��@�a�@b�V@�R@�x�@�OW@��M@�#�@|zz@]EN@��@�ԕ�F+P�W(��ڦ��ِ6�ET�����#3��D�����(�˔��e�����03��l:��?���zf��-��fؐ>��="\��x�CU��'����g 0=�̀@>��@��@�2��K�|�����֪����@t@�Ղ@���A�?A��@�i��F�����|?
,0@҄�A%�A�'AA�@ᅮ@�y*�w�<#D�ś�?��@�&bA�A~@�!�@�7.@���� �L�,g�=�@X�,@���@��:A�+@�*@FK|?��(�6`�Q���"��֓P�D�8�ę������!�����p�.�����H�� @���U|��NH�z_��2 �ug =�� �(8`��N�
����<���ȿ[Q�=�b @-�@�$@���9q����x��|h���@�@�/�@��Aa&@�K @�� �@�X�r��=`?��@�pA֠AJ�@�m�@��@�F���H�*M���p?Ȓ�@�zpAb,A]t@�Y�@��@�� ���� �H�i�@M��@�JX@�:AC�@��0@7Q�?��@�)4@�K���ӌ���ά�B�0�®����"@� ]0��#��
�H��"��"��CX��P����x�i����� �w(��>@ �����	������b���`�H� =�� @��@m�X@g���%�h���p��������?���@��d@���@�<@�t@���8���`B��^�?!P�@��|A	�V@��8@��@��@��п��P�B ����?��@�j�@�\(@��L@�@��`@h�P��$���P�M�@<+�@�I�@ȓ�@���@��@!��?�s��$`�A���ȩ��ƕ��<����o(�8�H���\���X���P��� ��~�����հ��O��I���^lཹ� ������(j��$���Y����,� =�� ?޸ @0<�@+���ݨ��+<���8�iǬ?��@�
B@/�@�n@���@NW��(���>�ܿ��? ܠ@�rr@�0J@�c�@�{>@~��@p�����ރ �h��?��P@x�@�l`@� �@lM�@P�\@.����������"X�@h�@g[x@�E@���@Sh?���?��<��8=���<�Q�<}�p��׾����=;J�=�<=�E��)t=�=;{伴�=��ʼ��H��.N��wX�Zxܻ!N@��S�<�WؽB:���6�6�|��bƽ��v���V���ʽ����J=���*"ܾJ�S�����x���3b���ƽ5�$�$��7h='��va���Ҽ"н�%�K\<B��=S�\=���X�D�}��<�(��m`;���s:���� ;W�@<#��=�К�==$�=B��y�9� �ZP�A�к�������=�{~�
�p�[���F� �컾%�<�	�;�o��k44�6a̼���<�'��\�4��v�;�Q8��F;Ī�<�՞<6�d<��:.[@<��&�L<���=�c<b��=�=8�?<��<�n=ʹ<=�d����<���=�T=H�q=1�C=��<��&<���<j�;��8�n9,;�p<��;�kx<ַ�<A����,ȼ��z���
<�N;G�м�;h�p���`<�c
:ߎ`����ҁ���A;����>NL��&;���9���;�>;�y�;p: �����;�L�<~�@=l��<�a8<,T��x��;<@=��<��=uY���]�<��`=qȼ~��=@���H�0�Xژ����غ�ۀ��|�<�� �&���������G,�A��n����nܼ��=5� ��wȾ*M��@潪tֽ�;X�EBԼ��ȼ�Ӑ�X=@<���A	�W����I �T�$����<T�=��=?Z���ܼ9�`<as`�d@;�נ�)���%�@;! ;�Q�=�5���/@<�q�=r��0o`9�� �	 �t��h ��� =k�t�����Z!(�Fφ���4��=N]�<�H�ٽ����L�Je�<�&���t���<S]��!�n<(�H=8��<�[D<���:�@<fY�����<���=�c�<�D�=Y��=���='?�=K�~=||N<�aĽ��<͵T=��)=��?=�i7=j!F=)��<�)t<��<<;�x���<H=3&;�n0=5x�<�yT���м��<�"�= �<
H�R	�;���YP=|�;i ����0���q;��������=�<�X��� ;��;�Pp:�'@:����M�;�;0C�#qC��-C��C��FC�VC���C��C�N�C���C���C��C���C�KEC���C���C�$C�H�C���C�+XC�+>C���C��C���C��C���C�:MC��<C���C��KC��C�ڶC��C���C�+C� C���C�LWC�@_C��C���C�gC���C�~C���C�;SC��<C�m�C�u�C�BzC��C��C���C�NC�X5C�*C�l�C���C��C��C� �C��fC�-�C���C��NC�BvC��C�z�C�@mC��C��C�@BC��(C�2�C���C��JC��C�4qC�nC���C���C�1wC��aC�luC��C��8C�"�C�bSC���C�O�C�M�C���C�3�C��C�.�C�׾C�T�C���C�C��C�.C���C�=,C���C�#C�8�C���C�iHC�[�C�:�C���C�<�C�BC�)C��C�_�C���C��<C���C�`�C�-C� SC��MC�qUC��C�8C���C��=C��C�;�C�I�C���C�SIC��YC��UC�j^C���C���C�b�C���C���C�\�C���C�QpC���C��TC�6KC�R~C��#C�֨C��,C�P)C���C���C�& C���C�<�C�x9C��C�uAC�p�C��C�N�C���C�M�C��C�m�C���C�BC�8�C�8~C�C�Y�C���C�B=C�W�C��C���C�sC�\�C�$;C�\ C�!�C�H�C�-&C���C��C���C��@C�}RC�+�C�"-C��C���C��C�^�C��^C��C�)dC�^\C�u�C��C�z#C� C��C�� C���C��JC��pC�ټC�yC�{C��@C�r�C�
�C���C�SC�ocC���C���C�hC�rC�ܕC��LC�FVC��C�W�C���C��^C���C���C�3�C�f�C�,C�l�C��C���C�
�C�<�C�o�C�i�C�+�C�w`C��C�`hC�v(C�1&C��NC���C���C�WQC�}�C�C�C�iFC�W%C��C��C���C���C��dC�e�C�F�C��C��vC��C��gC�̵C��C�FrC��pC���C�&+C��|C�/%C�@sC���C���C�ޛC��BC�.C�RBG�cTGŔ�G�=G���G�R�G� wG���G�o�G�kGŋcG���G�FG�%�Gķ�G��JG�m�G�
,G��G�`�G�4�G��G��G�� G�q�Gĺ+G�k�G��G�
G�7G�8G�G�	�G�j�G�XGĐgGùSG�mG��WG��G��_G�wdG��4G�2�G�
G��G��3G�̛G�w�G�G��G���G���G��UG�~�G�F�G�װG���G�7G�DG�6G�ޣGã�G�CG��^G�x�G�4�G��G��GG��G��x;�Ϗ;��<x�<6<*z <$k<!�l<5<5�G<?$�<&�<F�<��<E�<(��<*��<,�.<<^<I�8<O�W<�=<z�<{�<��<*?�<>�R<TN�<WĤ<<��<]	6<W�<l5<��<5V<EJ�<Cf<[Nl<S��<FM<OZ�<[(<�<��<*]r<9�*<@1<K��<P�6<]��<�<�<��<�"<&��</�v<*��<$j<Zg�<O<)
:<
l�<��<�8<XB<�F<"D_<>�<3l<1n�<��;�l�;�w�<��<�i<*�m<$�&<"�5<5��<8��<@<�n<ע<-�<V�<)�<+�</rN<<��<Jvl<P�*<��<��<:<�y<+Y�<@�p<W�&<X��<=�<b:d<��<�<��<5�+<E�<C�\<\u�<U�<H<P��<�<��<D<*�@<:�)<A
.<M*�<Rv�<_�P<��<��<z�<\_<'zm<0I"<+[I<%)�<\Ғ<O��<){5<&<��< ȼ<�+<�:<"�8<?�6<4Q@<1�<��;���;짔<Ĺ<|�<+4'<%�Y<#��<7 <:�g<AP<	�<��<
i<�X<*��<-Vy<3.4<=�<K��<Q��<{y<�`<[�<8<,�7<DM�<Y�^<Z.�<=�p<g�<�R<�P<��<7 <G�<El&<^--<W��<Jt�<R|\<�<	8<�<+ߜ<<hr<B�<N}�<T�<b�.<!�<��<��<F~<(:<0�t<,:<&S�<_��<P�<*3�<6�<�5<$F�<�k<E|<#&�<A<5�<2�\<J2;���;�\�<�<k#<,8f<'�<&h�<9S�<=�<C��<�8<�)<<Ξ<,��<0�o<9O><?�s<Nu�<S��<�<��<�.<.v</��<G�<\�><\w7<>�.<m8�<HV<��< ?<96$<I{$<H��<a�<[Ҏ<N[�<UL�<	��<�f<c<-��<?��<C��<PXJ<X�<g�T<m�<�Z<��<+<)��<2
�<-��<(�<c�T<Q1�<+�^<�u<�|<)��< i�<!�<$E�<C]�<8"�<4�/<dE;�H ?��p?��>С�>�� ?=Je >>�`?9�h<�� >�j�?�&�?��?�
X?��@H��?(�>��        ?Z�h@\�F?���?ws�@��l?�S�=�2 >#��    >3 ?0?�: @��@[Т>��=
E >�j�@q�>� :�` =�T�>�˰?�u�<�� =�� =�n�=�z�>��`@X7    >i��>i��>�Ɛ=��@;�� 8t  ;&@     <��     ;�� >� =�� <�} <�� =��?$6P>�@<UP ;�0             @�@ @��         C�pD#��A� >�@         A҆ D� C�0C�X�A$� B
L CF� ?�� A	� C.b�DH��EO�"C���D>�0E��,B��    C�@DX@D�8CO� CP� A=< D���DfA�D�E�A
2 @�, B>ˀ@�� @��     A
� >n� C�}p>%      @ux BT� C��@B��@BPV A� @�x A�+ B�0 BP     A� C=V�A�] A�	 @�X Btw�=D  >�� A� ��@�(�p���x�;���Q�@��&��5�����ᝀ�O���Y*�n���؈��������|0A�{8�bL�Q���˿@0�@AMm��t8��|�!�?����C ������V���X��}�@�g��+`пu� ��U����xA^c�A��B������0�
@@�J����zA-6�B3�,A��X�e���H��)�m���=��&���`�>��A��(ܳ�����[��3�[ �8��¼����YV�J0���j��r�@��9 ��@ �Y� �=m ;�� �V@��.���@�<��Q�P�)K@<>[ < \ �{ ��� �f���\K𾞦��.�r5�>�`=��`��d �g��1� �OD@�+y@����,��`>���>�� >1�����p�>q�>h��=��>�ɠ�@3�>:�0>�K@?2��?��>��>��>^��>�� ?R�?��>��(>�"�?fn�?F��?r5H?�,?�|>g� ?Z�<?%L >�1�>�6�?�<?/8�?tݤ?v�t?~$?�r�?�q�?|��;�\��l����������P��"7@�hP�S��觠<(�@���h����eĽ�0���H��c���ܽ�Sx�4�<�:�d����F���Lh��o⽱2x�����x>��>�V>�`6�lľ �\�k�� =ë�>�N>t��?GSQ?\�>-���y���H��ͨ=��>�?�#�>�ú?z�/?%d?(��B��(�6=�>))�>�7�?���?5�>�/z?	�e>�[�wp�e�4����>���?,Ͽ?O>k?\�e?���?�����CWٝB�^
B�~C!�B���B�.C�7CSpCwyC}C
�Bˋ�B�rJB�(B��Bu˼CjyCm��C��C� �B��6Bk��B���Bō6B���B�&B�h�CTڇC��|C�3C /'B���C�BwQ|C<�7C��~C>��CEC��C�,PCp^�C��C��C?4-Cd�	Cb�9B� B�L"B�C�~XC;tC>9CYSC�<�C���B��C��C!��C�ԢC�8"D3CŁ�CQ[C�iXC+HACyߵC+�YC-�}Cf��C�                                                                                                                                                                                                                                                                                         G��G�ӛGŲ�G�{CG�e�G�Z>G�\�G�d�G��GōKG�ƟGŦ�G�e�G�6G��G���G��\G��?G�
�G��G��zG�t<G�%xG���G���Gĥ�GĐ.Għ�GĬ�G� 	G��9GŎaG�/�G��GĞ�GĹ�G��jG���G�+�G�!�G�G���Gō�G�)�G���G��G�b�G�nGō�G�#`G�a�G�3pG��aGź,G�}�GŒGŭ�G��G��xGņ�GƘ#Gƃ6G�8G��G��G�*�G�5�G�_qG�cG��3?� ?�  ?�  ?��?�e?�T?�  ?�  ?�;?a�?��?�  ?�  ?�h?�&?�K?��?�  ?y	?7��?��?�  ?��?��?�  ?�  ?�?U6?~��?p!�?M(�?�  ?p�5?�  ?��?�>?�  ?��?և?}qJ?_��?:?�  ?~5�?X?��?�+?��?��?~�2?z��?|4�?yb?Hի?{�?��?�  ?�  ?�  ?}��>ʏ:>� �?_Z,?��?�  ?̈?�  ?��?�#?|Mh�,���k� � ����?�[@������_<��ST��H�I�@��~�?x��?	=@������_����L��>������yd���@:<�?���T�@��M0�?�ؿ�1@�?+��D�����=X� @{݀@��@]���*���>� ?��0@Y ?���@p�B��A
hdA
�@���@���@�ɐ?�(0@?��`@h��@�%�@�<�@�ڐ@�P@۪@�|t@�Y�@��`@!'�@��<@S�8@�?�@�`@�%|@�`@��@ʪ@� �@��@�@�?���I�`������|���@����1%`�j�0�<�(?���]���H�
�B��q|��F��ڶ�"�t �şp�9�P�@�h������{L�<���M ������@���@�_�@>�P��U`�/;H�ǰ쿒�?���@���@LM@�u�@�8?���/N��\c��h# ?���@�.lA*�@��@���@w��@��0������wп�a�?Ȧ @6kx@���@���@z
�@1s�@fL ������ؾA @aqP@���@���@�t@&�@0�� e C��C�nC�h�C�OPC��&C�Z\C�VtC�U�C��zC�S�C��hC�9�C�ΎC�_�C�XC�ւC��
C��LC�qcC���C��C�g�C�a4C�qoC���C�AC��QC���C�cjC��C��C�j�C��C��JC���C��C���C��C��BC�gC��FC�މC���C���C�`�C�� C��rC��C���C���C�	�C�0"C�qC�*�C���C��C�4tC�glC�,�C�a`C���C���C��C�$BC�ӬC�!�C�8GC��HC�5�C��*C��yC���C�tC���C�-eC�[C��C��C��CC�-�C���C��sC�llC���C�N�C��eC��oC��aC��C��RC���C�L�C�h�C���C�n\C�`�C��uC��UC��4C�}gC�S*C�V?C��C��C�R�C�DNC�'�C��C�"�C��
C���C�iC���C��C��C��hC�1�C���C�}�C�"�C�V�C��yC��C��1C�C=C���C�ťC�QC�p�C�*kC��%C���C���C�maC�J�C��OC��{C��9C���C��=A�� A6� >o  ?�  ��� @Ɛ >�  ��  �o0 �yP A�| B�z �� ��` ��� �� @�H A�r C�@BG\ DvQ�C���@ȸ �� �r@ �8( C�A�D!~�C���D���D7���o �u, C'�CK C���D3� D&�`E�ΖE^�|B$ B�ȀD-�PD�XD�1�EZ��E��PE&6E��D��PD@�D�CD9�pD��PD���D���Ed�EE�D�E&�DGҐDϨ�D��pDÓ�D�XE?NE8�<F�E�*Eݧ�                                    ?i9�?~�>ne            ==�`?}i�?Vh?Y^?oh?�  ?|        >E�?u�?yB?�  ?~˞?�p?��>���?�t?�r? ?��?��?w;�?9�?�      =���?{�?t?�  ?�  ?��?|�N?m�j?|�?�  ?�  ?w��?~=@?�  ?~�\?~�V?~�?}�?�  ?�  ?�<?�f?�4?�2?��?�?~`?�  ?��                                    >�O ?VȀ                    ?�@?���?��@pA:k|@���        =�� >v7 @���?�X@?�S�A��hA6��@m�0>���@��@H��@�Q�@�! @�d�A�bB��        A#��@�{A2�A�l�A�>rA��vB.zA'��A�l@���A��`Ap�BpA((A`��A m�AܙA���@��@�"�@:��@W��@�ȸA6��A�*�B��B,;�A�pJ                                    >��L?B	                     ?�  ?l��<8V >���?~�?Jߞ            ?a�?�(=� �=P��>#n�?=
�?�    ?k��?,z>���>0��?:��>#� =�        ?%zv?s��?}�4??3�?D?�>��,>�@�>�n�>�r(?k�
>��T?-��?��?"GN?��?Kx>}8=�z�?`�?j��?�?wW*>��?r�>��X9� 9�@ ?|�                                    ?F =��                             ?}�?+H ;�� >T��            =��>�� ?h��?r�2?Vh >��<�      <� >XX ?,"�?Sو>�� ?M ?h�>        >�=GT�    >���>F� ?)� ?-  ?Ȩ?>F�=�ϰ?�V>��>�( >�d >��<><� ?6, ?d� <�� <7� >δ =
�`?��>�X?@ ?�d?�>�` 8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ8ѷ