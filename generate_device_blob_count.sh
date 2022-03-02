#!/bin/bash
#Copyright (c) 2021 Divested Computing Group
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <https://www.gnu.org/licenses/>.

#prefix="Vanilla";
prefix="Deblobbed";

getBlobCount() {
	name=$1;
	version=$2;
	versionStripped=$(echo "$version" | sed 's/.*-//')
	devicePath=$3;
	kernelPath=$4; #ignored, but kept for compatibility
	blobCount=$(getLineCount "Build/$version/device/$devicePath/*proprietary*.txt");
	if [ -n "$5" ]; then
		extraBlobs=$(getLineCount "Build/$version/device/$5/*proprietary*.txt");
		blobCount=$(($blobCount + $extraBlobs));
	fi;
	if [ -n "$6" ]; then
		extraBlobs=$(getLineCount "Build/$version/device/$6/*proprietary*.txt");
		blobCount=$(($blobCount + $extraBlobs));
	fi;
	name=$(echo -n $name | sed 's|/||g');
	echo "blobCount$prefix""_$name=$blobCount";
}

getLineCount () {
	cat $1 | sed '/^\s*#/d;/^\s*$/d' | wc -l || true;
}

getBlobCount akari LineageOS-18.1 sony/tama-common sony/sdm845 sony/akari;
getBlobCount alioth LineageOS-18.1 xiaomi/sm8250-common xiaomi/sm8250 xiaomi/alioth;
getBlobCount Amber LineageOS-17.1 yandex/Amber yandex/sdm660;
getBlobCount angler LineageOS-15.1 huawei/angler huawei/angler;
getBlobCount apollo LineageOS-14.1 amazon/apollo amazon/hdx-common amazon/hdx-common;
getBlobCount aura LineageOS-18.1 razer/aura razer/sdm845;
getBlobCount aurora LineageOS-18.1 sony/tama-common sony/sdm845 sony/aurora;
getBlobCount avicii LineageOS-17.1 oneplus/avicii oneplus/sm7250;
getBlobCount axon7 LineageOS-15.1 zte/axon7 zte/msm8996;
getBlobCount bacon LineageOS-18.1 oneplus/bacon oppo/msm8974 oppo/common oppo/msm8974-common;
getBlobCount beryllium LineageOS-18.1 xiaomi/sdm845-common xiaomi/sdm845;
getBlobCount blueline LineageOS-18.1 google/crosshatch google/msm-4.9 google/crosshatch/blueline;
getBlobCount bonito LineageOS-17.1 google/bonito google/msm-4.9 google/bonito/bonito;
getBlobCount bramble LineageOS-18.1 google/redbull google/redbull google/bramble;
getBlobCount bullhead LineageOS-15.1 lge/bullhead lge/bullhead;
getBlobCount cheeseburger LineageOS-18.1 oneplus/msm8998-common oneplus/msm8998 oneplus/cheeseburger;
getBlobCount cheryl LineageOS-18.1 razer/cheryl oneplus/msm8998;
getBlobCount clark LineageOS-14.1 motorola/clark motorola/msm8992;
getBlobCount clark LineageOS-17.1 motorola/clark motorola/msm8992;
getBlobCount coral LineageOS-18.1 google/coral google/coral google/coral/coral;
getBlobCount crackling LineageOS-17.1 wileyfox/crackling cyanogen/msm8916 cyanogen/msm8916-common;
getBlobCount crosshatch LineageOS-18.1 google/crosshatch google/msm-4.9 google/crosshatch/crosshatch;
getBlobCount d802 LineageOS-18.1 lge/g2-common lge/msm8974 lge/d802;
getBlobCount d852 LineageOS-18.1 lge/g3-common lge/g3 lge/d852;
getBlobCount d855 LineageOS-18.1 lge/g3-common lge/g3 lge/d855;
getBlobCount davinci LineageOS-17.1 xiaomi/sm6150-common xiaomi/sm6150 xiaomi/davinci;
getBlobCount discovery LineageOS-18.1 sony/nile-common sony/sdm660 sony/discovery;
getBlobCount dragon LineageOS-15.1 google/dragon google/dragon;
getBlobCount dumpling LineageOS-18.1 oneplus/msm8998-common oneplus/msm8998 oneplus/dumpling;
getBlobCount enchilada LineageOS-18.1 oneplus/sdm845-common oneplus/sdm845 oneplus/enchilada;
getBlobCount ether LineageOS-15.1 nextbit/ether nextbit/msm8992;
getBlobCount ether LineageOS-18.1 nextbit/ether nextbit/msm8992;
getBlobCount fajita LineageOS-18.1 oneplus/sdm845-common oneplus/sdm845 oneplus/fajita;
getBlobCount flame LineageOS-18.1 google/coral google/coral google/coral/flame;
getBlobCount flo LineageOS-15.1 asus/flo google/msm;
getBlobCount flounder LineageOS-15.1 htc/flounder htc/flounder;
getBlobCount flox LineageOS-18.1 asus/flox google/msm;
getBlobCount FP2 LineageOS-18.1 fairphone/FP2 fairphone/msm8974;
getBlobCount FP3 LineageOS-18.1 fairphone/FP3 fairphone/sdm632;
getBlobCount fugu LineageOS-15.1 asus/fugu asus/fugu;
getBlobCount fugu LineageOS-16.0 asus/fugu asus/fugu;
getBlobCount fugu LineageOS-17.1 asus/fugu asus/fugu;
getBlobCount griffin LineageOS-17.1 motorola/griffin motorola/msm8996;
getBlobCount grouper LineageOS-14.1 asus/grouper asus/grouper;
getBlobCount guacamoleb LineageOS-17.1 oneplus/sm8150-common oneplus/sm8150 oneplus/guacamoleb oneplus/common;
getBlobCount guacamole LineageOS-18.1 oneplus/sm8150-common oneplus/sm8150 oneplus/guacamole oneplus/common;
getBlobCount h815 LineageOS-14.1 lge/h815 lge/msm8992 lge/g4-common;
getBlobCount h850 LineageOS-18.1 lge/g5-common lge/msm8996 lge/msm8996-common lge/h850;
getBlobCount h870 LineageOS-15.1 lge/g6-common lge/msm8996 lge/msm8996-common lge/h870;
getBlobCount h910 LineageOS-18.1 lge/v20-common lge/msm8996 lge/msm8996-common lge/h910;
getBlobCount h990 LineageOS-18.1 lge/v20-common lge/msm8996 lge/msm8996-common lge/h990;
getBlobCount ham LineageOS-16.0 zuk/ham cyanogen/msm8974;
getBlobCount hammerhead LineageOS-15.1 lge/hammerhead lge/hammerhead;
getBlobCount hammerhead LineageOS-16.0 lge/hammerhead lge/hammerhead;
getBlobCount harpia LineageOS-17.1 motorola/msm8916-common motorola/msm8916 motorola/harpia;
getBlobCount herolte LineageOS-14.1 samsung/herolte samsung/universal8890 samsung/hero-common;
getBlobCount himaul LineageOS-14.1 htc/himaul htc/msm8994 htc/hima-common;
getBlobCount himaul LineageOS-15.1 htc/himaul htc/msm8994 htc/hima-common;
getBlobCount hotdogb LineageOS-18.1 oneplus/sm8150-common oneplus/sm8150 oneplus/hotdogb oneplus/common;
getBlobCount hotdog LineageOS-18.1 oneplus/sm8150-common oneplus/sm8150 oneplus/hotdog oneplus/common;
getBlobCount i9100 LineageOS-14.1 samsung/i9100 samsung/smdk4412 samsung/smdk4412-common samsung/galaxys2-common;
getBlobCount i9300 LineageOS-14.1 samsung/i9300 samsung/smdk4412 samsung/smdk4412-common;
getBlobCount i9305 LineageOS-14.1 samsung/i9305 samsung/smdk4412 samsung/smdk4412-common;
getBlobCount jfltexx LineageOS-18.1 samsung/jfltexx samsung/jf samsung/jf-common;
getBlobCount kccat6 LineageOS-16.0 samsung/kccat6 samsung/apq8084 samsung/apq8084-common;
getBlobCount kipper LineageOS-16.0 wileyfox/kipper cyanogen/msm8916 cyanogen/msm8916-common;
getBlobCount klte LineageOS-18.1 samsung/klte-common samsung/msm8974 samsung/klte samsung/msm8974-common;
getBlobCount land LineageOS-16.0 xiaomi/land xiaomi/msm8937 xiaomi/msm8937-common;
getBlobCount lavender LineageOS-18.1 xiaomi/lavender xiaomi/sdm660 xiaomi/sdm660-common;
getBlobCount lentislte LineageOS-16.0 samsung/lentislte samsung/apq8084 samsung/apq8084-common;
getBlobCount lmi LineageOS-18.1 xiaomi/sm8250-common xiaomi/sm8250 xiaomi/lmi;
getBlobCount m7 LineageOS-14.1 htc/m7 htc/msm8960 htc/m7-common htc/msm8960-common;
getBlobCount m8 LineageOS-18.1 htc/m8-common htc/msm8974 htc/m8 htc/msm8974-common;
getBlobCount maguro LineageOS-14.1 samsung/maguro samsung/tuna samsung/tuna;
getBlobCount mako LineageOS-18.1 lge/mako lge/mako;
getBlobCount manta LineageOS-14.1 samsung/manta samsung/manta;
getBlobCount marlin LineageOS-18.1 google/marlin google/marlin google/marlin/marlin;
getBlobCount mata LineageOS-18.1 essential/mata essential/msm8998;
getBlobCount merlin LineageOS-17.1 motorola/msm8916-common motorola/msm8916 motorola/merlin;
getBlobCount n5110 LineageOS-14.1 samsung/n5110 samsung/smdk4412 samsung/smdk4412-common samsung/kona-common;
getBlobCount n7100 LineageOS-14.1 samsung/n7100 samsung/smdk4412 samsung/smdk4412-common;
getBlobCount oneplus2 LineageOS-15.1 oneplus/oneplus2 oneplus/msm8994 oppo/common;
getBlobCount oneplus2 LineageOS-17.1 oneplus/oneplus2 oneplus/msm8994 oppo/common;
getBlobCount oneplus3 LineageOS-18.1 oneplus/oneplus3 oneplus/msm8996;
getBlobCount osprey LineageOS-17.1 motorola/msm8916-common motorola/msm8916 motorola/osprey;
getBlobCount pioneer LineageOS-18.1 sony/nile-common sony/sdm660 sony/pioneer;
getBlobCount pro1 LineageOS-18.1 fxtec/pro1 fxtec/msm8998;
getBlobCount raphael LineageOS-18.1 xiaomi/sm8150-common xiaomi/sm8150 xiaomi/raphael;
getBlobCount redfin LineageOS-18.1 google/redbull google/redbull google/redfin;
getBlobCount rs988 LineageOS-18.1 lge/g5-common lge/msm8996 lge/msm8996-common lge/rs988;
getBlobCount sailfish LineageOS-18.1 google/marlin google/marlin google/marlin/sailfish;
getBlobCount santoni LineageOS-16.0 xiaomi/santoni xiaomi/msm8937 xiaomi/msm8937-common;
getBlobCount sargo LineageOS-18.1 google/bonito google/msm-4.9 google/bonito/sargo;
getBlobCount serrano3gxx LineageOS-18.1 samsung/serrano-common samsung/msm8930-common samsung/serrano3gxx;
getBlobCount serranoltexx LineageOS-18.1 samsung/serrano-common samsung/msm8930-common samsung/serranoltexx;
getBlobCount shamu LineageOS-15.1 moto/shamu moto/shamu;
getBlobCount shamu LineageOS-18.1 moto/shamu moto/shamu;
getBlobCount sunfish LineageOS-18.1 google/sunfish google/sunfish;
getBlobCount surnia LineageOS-17.1 motorola/msm8916-common motorola/msm8916 motorola/surnia;
getBlobCount taimen/walleye LineageOS-18.1 google/wahoo google/wahoo google/muskie;
getBlobCount thor LineageOS-14.1 amazon/thor amazon/hdx-common amazon/hdx-common;
getBlobCount toro LineageOS-14.1 samsung/toro samsung/tuna samsung/tuna;
getBlobCount toroplus LineageOS-14.1 samsung/toroplus samsung/tuna samsung/tuna;
getBlobCount us996 LineageOS-18.1 lge/v20-common lge/msm8996 lge/msm8996-common lge/us996;
getBlobCount us997 LineageOS-15.1 lge/g6-common lge/msm8996 lge/msm8996-common lge/us997;
getBlobCount v1awifi LineageOS-14.1 samsung/v1awifi samsung/exynos5420 samsung/exynos5420-common;
getBlobCount vayu LineageOS-18.1 xiaomi/sm8150-common xiaomi/sm8150 xiaomi/vayu;
getBlobCount victara LineageOS-18.1 motorola/victara motorola/msm8974;
getBlobCount voyager LineageOS-18.1 sony/nile-common sony/sdm660 sony/voyager;
getBlobCount xz2c LineageOS-18.1 sony/tama-common sony/sdm845 sony/xz2c;
getBlobCount yellowstone LineageOS-16.0 google/yellowstone google/yellowstone;
getBlobCount yellowstone LineageOS-17.1 google/yellowstone google/yellowstone;
getBlobCount Z00T LineageOS-15.1 asus/msm8916-common asus/msm8916 asus/Z00T;
getBlobCount z2_plus LineageOS-18.1 zuk/msm8996-common zuk/msm8996 zuk/z2_plus;
getBlobCount zenfone3 LineageOS-16.0 asus/zenfone3 asus/msm8953;
